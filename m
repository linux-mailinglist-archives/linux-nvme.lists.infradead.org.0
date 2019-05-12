Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D9E1ACD9
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 17:50:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=awQnsIzKFe0ZLgdx/BnlJ39M0zlL95q946+zTA1ypHo=; b=DvDfcdsMfrDjaUZyUKGnPgHIE
	/aJ18UhtPbMTT5h5IDBfdeBvPEn61PSc1EO4kd+8L52G7z/XJQXGs5SgCAJeFcO+e/RWGtHWcVH3z
	Q9N7UFCn/Q0e3RBZZGvrxQQpOx8euvRvAmY2fWmsAYcK2mpgaGN6S1veVu1803RyunSbq6yfEErNP
	pOo779yYNeMe5HyOA92G2IGrH9+jtc0jc9rrMTxhgwtstMXd2QWx+JXDA9zwsjV0xZsb+FF4+Ukkp
	sTnrt4aOr2yd++noDUA5kN9zGh9qVtwFOm27nvzK2AtYyz1IpX94msn0njx4HZSOVCqZkxY6b/vFF
	TXb5rhmWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqjq-0007wp-LP; Sun, 12 May 2019 15:50:10 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqjl-0006pw-Ow
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 15:50:07 +0000
Received: by mail-wm1-f67.google.com with SMTP id j187so11420797wmj.1
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 08:50:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=33RvTAhkvK7R2gGAnwHTdUs8Nh0nuQf8clEYz/0gCNc=;
 b=hMIHWayoyRsgFe9n3H/76Rgab/18nIVrMNim/v6qNYHKcqJSrwzhzXnbc3Aq4PXFHR
 Fe7HQG3F/89sBt9GhM3kpbZm8a7/oPgDTvbdWaAGeSp+BRwW9r09WJKhDhcfeQWm4eaS
 pCueygJT6Vhu6D4YNIPflAnpbWY6UbRC8A9YQktfLwIsy3/TWV7Hfgk0OmwwwCNNG0Bg
 uDlXdx6uX+2mzbAL0FekbrPtReX1CVSjJMKQctKBbrCe9IbUE7ZZ67qbdoevykAzLK7H
 AqJp1privavJOqov3NFuT8JoDnB5FOCWSEEsV6wr/5QdWsO0LzxLoI/kcv/RAw+Hz8AV
 3afQ==
X-Gm-Message-State: APjAAAUqG5aIid39XWJuKyUWwIdsxGsOc5Ixmcd0ZG6gJ6bp+acrMY1Z
 XdBmLcLY+QQpsdG7QJeyBDHLDzJI
X-Google-Smtp-Source: APXvYqw3GS6tytmorBB0NW9Y6K4/m9hIIojGJkltBjGE6eceGlAxVyvqMUG3YQLJqjq77gjaD6YhgA==
X-Received: by 2002:a1c:4843:: with SMTP id v64mr8402308wma.73.1557676200487; 
 Sun, 12 May 2019 08:50:00 -0700 (PDT)
Received: from [192.168.81.52] (bzq-219-42-90.isdn.bezeqint.net.
 [62.219.42.90])
 by smtp.gmail.com with ESMTPSA id a5sm12146206wrt.10.2019.05.12.08.49.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 08:49:59 -0700 (PDT)
Subject: Re: [RFC PATCH] nvme: guard ctrl->state by lock
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20190508214128.20620-1-chaitanya.kulkarni@wdc.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <38a8743f-76c0-b83c-d362-9794b5d5896f@grimberg.me>
Date: Sun, 12 May 2019 08:49:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508214128.20620-1-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_085005_827220_F2AA0EF5 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> This patch adds a helper function to check the nvme_ctrl state.
> This helper function uses controller lock when accessing ctrl->state
> member which is guarded in the nvme_change_ctrl_state().
> 
> This RFC is light on the details, if this change is acceptable I'd
> like to send the detailed tested version.
> 
As commented, the state read access is not safe by definition as
the action needs to be atomic with it as well. The code needs to
be able to handle the fact that its advisory only.

If there is a case that doesn't, then it should protect it specifically
so fast-path checks are not affected.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
