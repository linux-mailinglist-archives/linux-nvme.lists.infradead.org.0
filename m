Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A1279068
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Jul 2019 18:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1RK894/ANeNVnXeVkuga7zclPXo38lxGZ4NbRwJIc9o=; b=Q212YYrSNKwjOeAjm+lZ5/LNf
	9RgZ+UHYMJexoCatTCWdkQHSUFjk5IqEJm2FBcHOZ687gNb9CR9U3+ZobIaxFf1fVDA7td0CAu5zL
	3DN9giDrYbE3WvbVd1o5xvxlzimH3Ywv9VJcSD8hsJl62w6M4cn5XO83fi1kGCTFgOhu1TJKyC0+x
	xy3DGnFhadTXaRFMhQRkbL/sHtxOrBorNZCDJcOKvYnd7E0AauUazpXamhKuUx7zovHnNmO2tcOoz
	XUVT3iuqdUWHjJg82Zn+pJUfKpeU4zpJ98oCNfjw9wOYRmGBhNv30vykbTYFxTSHglcXY3Vs/0qf/
	F4FxAVZwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8Fq-0000vK-Dn; Mon, 29 Jul 2019 16:12:06 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8FX-0000uy-RQ
 for linux-nvme@lists.infradead.org; Mon, 29 Jul 2019 16:11:49 +0000
Received: by mail-pg1-f196.google.com with SMTP id w10so28504562pgj.7
 for <linux-nvme@lists.infradead.org>; Mon, 29 Jul 2019 09:11:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3pzXbngJsX8XWU6ecWIkwrQNEUbuSGOcnxcXM5+dXeg=;
 b=FC9t+BQHYeJZDHhrAZ6QzRv8+/6teWHkSdc1usBTGl2CtTCFtdW0i3JulrIxxcUxwk
 JuSkLzA8aRAAuAwh8rHdCIllXB1ZgnOpa8RA37YQJJ/DobSh/r6fWCRk4SD2EmS8VOIK
 nqJk/rocUgmF+QFNvdBdmNuC6jYSmk7xypIH1I4EWMShHKhGUnNwlRs3l3Mh+XWrI4f+
 Hexw/nlZJNFfKtAZfiNVAeobIE8ri8Hd/RtPvKEfPXf1cbPVEk/pYc/RfCHj8SZtBV3K
 wrxfSEcgjWXMHHXVg8g/JkSqXpl9DWQGtIRqLeW5pPzWRjf2vsazAn3N8E71neeo9cUi
 LNZA==
X-Gm-Message-State: APjAAAX4j8bkkv7jfuS8JjYPvXjVrYWmgUnBziWgabIPIlrmJiDPGdpG
 lP06IEfX6kUqtSRQXJ4PFW8=
X-Google-Smtp-Source: APXvYqzflFzdmARMggWUsgA05yudBTcgbVLeDyc1NkKzBMufUJoCHC7pG0O47s3XEEu3zb4KObsXVQ==
X-Received: by 2002:a62:28b:: with SMTP id 133mr37191957pfc.251.1564416707112; 
 Mon, 29 Jul 2019 09:11:47 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:68b1:d8a0:b9e3:285e?
 ([2601:647:4800:973f:68b1:d8a0:b9e3:285e])
 by smtp.gmail.com with ESMTPSA id 64sm63696347pfe.128.2019.07.29.09.11.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Jul 2019 09:11:46 -0700 (PDT)
Subject: Re: [PATCH v3] nvme: fix controller removal race with scan work
To: Hannes Reinecke <hare@suse.de>, linux-nvme@lists.infradead.org
References: <20190725185657.9025-1-sagi@grimberg.me>
 <a5ce0b2d-e4d5-ab79-442c-4c3795fdb0fd@suse.de>
 <93c38a70-3500-b1eb-38c7-41419c8f64c8@grimberg.me>
 <df50ec95-0ca1-58be-1660-101529a72662@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1bf56b26-a521-8de2-5d52-0c1c9d19fd25@grimberg.me>
Date: Mon, 29 Jul 2019 09:11:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <df50ec95-0ca1-58be-1660-101529a72662@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_091147_883614_C30F2083 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@intel.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> As you might know I'm chasing down the mysterious reset/rescan issue,
>>> too, and still haven't been able to resolve is properly.
>>
>> Have you tried the patch that I proposed to you?
>>
> Yeah. But reports are still inconclusive due to the second problem.
> And

OK, looking forward to understanding the root-cause and if/how
we can address this.

>> This is a different problem than what you reported, this is
>> addressing the scenario that the host connects and quickly
>> disconnects from a client before the scan is completed AND
>> multipath is enabled.
>>
> .... Which is precisely the failure scenario for my problem, too ...

Hannes, I'm a bit confused again. I was under the impression that
your issues were around controller reset race with scan, not controller
removal (disconnect).

>>> Thing is, I had been notified on a regression caused by commit
>>> 525aa5a705d86e ("nvme-multipath: split bios with the ns_head..."),
>>> which manifests itself by a spurious I/O error during failover.
>>
>> Hmm, this is interesting. Not sure how this specific commit would
>> introduce such an issue.
>>
> See? Me neither. Sadly they _have_ bisected it, and this really is the
> patch introducing the regression.
> Current thinking is that we're dropping all paths during reset, causing
> ns_head to be deleted, too.

That is impossible, the only thing that would drop paths is either
if the user is removing a controller, or the ctrl_loss_tmo expired, both
are controller removal and not controller reset.

> The ns_head will get recreated immediately
> afterwards, so userspace wouldn't even notice that.
> But if we have a non-empty requeue list that will be flushed only when
> doing the final put on the ns_head structure, causing all I/O to fail.

Again, we need to understand what is the exact scenario, because if we
are losing all the paths, I/O failure is the expected behavior.

> So looking at it that way, it _might_ actually be that your patch helps
> for that situation, too, seeing that we can't reliably enumerate
> namespaces during reset.

Can we define clearly what do you mean when you say "enumerate 
namespaces during reset"?

> I'll give it a try and will get back to you with the results.

Thanks Hannes.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
