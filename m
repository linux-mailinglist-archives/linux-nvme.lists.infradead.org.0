Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D91EABBE50
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Sep 2019 00:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gifQSaurN8rQXKTwWhjO2tzAyD5UxdJf1zuCi2G7SrA=; b=TW5zatMmao3SYHRC2yv9W4ZU2
	BdN1Rb5GVpm8pY15WsctG7J+N9p9oJ5gYXoBZK0HOBmlhA9k3Zg/xSNoqimerD0UsyKEpYYgyPvOv
	VhtQGuQ1g/enDIn5xsEywmbd8jczoQM6BF/P4nrSTBgoG3GgdtlQEWunMXLkKt8kUXiAoQWShdOwu
	rn9eNmTODkNcwpVOIdYbdbtT2pCn2B+Zz6pW1cRVtK5z460znSGWHUAmcrjpn9gyvN2FKtX90s3hZ
	PiJZ9SUayXJ6pt/WytUJox4eS1argGgdXCtRQUSgzQdvuigt38eXwAy/mzUWRjB80yoqbRZVDGAJs
	FEpSr2WXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCWWn-0006Mi-UJ; Mon, 23 Sep 2019 22:09:53 +0000
Received: from mail-wm1-f41.google.com ([209.85.128.41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCWWi-0006MM-H7
 for linux-nvme@lists.infradead.org; Mon, 23 Sep 2019 22:09:50 +0000
Received: by mail-wm1-f41.google.com with SMTP id v17so10879120wml.4
 for <linux-nvme@lists.infradead.org>; Mon, 23 Sep 2019 15:09:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=06/H31vqK8njUA830NHbm9mn13cVGihD71KgtbXTYzw=;
 b=oefXwGKKZjYt+riCg6l9MZjx9N/Nah+08fgsoxUKM2+PrrJyE5eoH7Bu+Gc5VWEXo8
 rnR5tXA0R0NuQgS60pv9ReLC2V/W/c7gtMspDx/wErGDCEyU+o6YBuS1phDhcroiTFZN
 jnAjGGCGlufRPgOLbmt0xi3GB7vlerJbkTPP6X7RfnCyN+ZXBvltbkLifhLfRTpiB+5W
 seRTBBPnlupFgUehEWXHuX68OCfkiEX/d6EDWDke88Gw9+/aKRDJAfouL2olPD9jz0TY
 1V0YxJftmV19kvL8K3TyOPreQknKs2JxeNfJSNmNcsUKewxmj2uzKz7o8ont7kimAQDN
 fbjA==
X-Gm-Message-State: APjAAAUg5BOeIa80LgwV3wZYibO8xDMavy0lrHXzQTGNa4XoR3Ze2Ck/
 o/b3427To1gH1oAZ3CSrh1A=
X-Google-Smtp-Source: APXvYqxWZKsiIfv5xvT/+ZCSh4uok9mV4TACzG7XhDwaJIc6+EvsSpZMzg1+klEP+WWgg2KHXSUhAA==
X-Received: by 2002:a1c:9889:: with SMTP id a131mr1301009wme.38.1569276586734; 
 Mon, 23 Sep 2019 15:09:46 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id y14sm18866252wrd.84.2019.09.23.15.09.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Sep 2019 15:09:45 -0700 (PDT)
Subject: Re: [PATCHv2 0/6] nvme: double reset prevention
To: kbusch@kernel.org, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
References: <20190919213431.7864-1-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <8cc6bc39-a060-3128-bf19-afb06a5c36ac@grimberg.me>
Date: Mon, 23 Sep 2019 15:09:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190919213431.7864-1-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_150948_572400_1C620B3B 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.41 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.41 listed in wl.mailspike.net]
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Keith,

The series looks fine to me, do you think we need more eyes on
this or we should go ahead and apply this?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
