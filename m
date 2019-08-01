Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57EDB7D2CA
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 03:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fwQyYQutaJMIltrDuwWSVdjvRnnyTHnoaIy9K1Y6yk0=; b=gDfF6PvZbtjs3R2sy9bRONk0c
	fN+2vmzkJAQdnNMBd347lT/vRkK2NkBzQDUEwcnLx6jyvaNqfl6owl+rt/qsw1RJ5F6OiwXlV4Cea
	vBLP/68UE0KeLaVNlHANfI28DVDnbtZx9U6Ymost9C+fAixregDWgYSvC+h7N48VUlFCZ6L7WBTnk
	jeTgPxutIzm0yQWGPiPR898Ny3BVgYF8p598nzkeC4voRvt8b04cR5Vdqt6n1ij/WjNBQtOgIF8uq
	nLqFxAhh81sCY8oV2KuQDBIC/nHsZW88iuzsF+mR4sZwC32bgA6EhnSjl7+tY4CRznlavj+xBHuFL
	xSJSy4/Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hszoH-0001fo-Jh; Thu, 01 Aug 2019 01:23:13 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hszoC-0001fS-Ob
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 01:23:09 +0000
Received: by mail-pg1-f194.google.com with SMTP id n9so26816259pgc.1
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 18:23:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YMJLP/Z2/sPM5mnGX8TczkKp0ve8xzy8YvQsjBmg/eQ=;
 b=TgaN22chdjGCV68lCWPjOkdD07ugbtNvfeI2HlR3DOqk4X8giAYw2fcVs3+Jglj/t4
 EgvpWBuIASBKXxJsoOJLegLjSzWJY2jONDcDJjw04za2ftQjr0biVIttP2VZ2Ncvqdr2
 2BOK1zo0qxbyDm7sL/uaze0Y01KhPaFieAnJwcto3Fn1z1peHrT8sFKsj9Wa7xYPpf+y
 XZWlvPkMYKMavz1aU4OvzM1JJxsldmhymkHkkQqOKnIC7VNSCWhNA2beV7Hr0xlfZ++j
 cE2fvroVr5dMXHZhaljoNilh7XnKnHtIuBgzsvIEBNaLX5iigXn/Z0kDBZ9nQ/toZbts
 afHg==
X-Gm-Message-State: APjAAAUn/zzx0ucAp0GTpw+nvAoNSLjWPc3GC9WVxtmGeKBKUTacTQHB
 O+rCnoxUzmgZX1gJqS3WKcg=
X-Google-Smtp-Source: APXvYqzGyhx8hRpQpPWylcyBbsMkuSgAix4YIcASvwhkTkoMllf1yUgROiYNa5h9qFm8FfwzuegsVw==
X-Received: by 2002:a65:534c:: with SMTP id w12mr116624307pgr.51.1564622587341; 
 Wed, 31 Jul 2019 18:23:07 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:45eb:53c1:ba3f:2a0a?
 ([2601:647:4800:973f:45eb:53c1:ba3f:2a0a])
 by smtp.gmail.com with ESMTPSA id q19sm74180297pfc.62.2019.07.31.18.23.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 18:23:06 -0700 (PDT)
Subject: Re: [PATCH] nvme: tcp: selects CRYPTO_CRC32C for nvme-tcp
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190714081842.32427-1-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6bcb4d7a-7aec-23e3-2038-557a1fea8dcf@grimberg.me>
Date: Wed, 31 Jul 2019 18:23:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190714081842.32427-1-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_182308_800677_07E2E17A 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

applied to nvme-5.4

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
