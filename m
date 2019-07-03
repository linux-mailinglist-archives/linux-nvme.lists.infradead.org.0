Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08FA5ECB4
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jul 2019 21:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zKNDqtrFsQv1ZzMEHJOG9Knhi4br4q2ZL/MUE2OgUYQ=; b=sMtj3TfedUWjQSv/w+waML2XH
	r12T30iKhzeCXME+PgHiYhk1L8aa8PrDn50vRTnhVBGjFX894PMZAyaX3Ovp48JfpR3h57XYmMwyL
	VqBBSI6f6rQRyyTxun4tlmomDUpHynssM53txvuyiBBU0PdQC38OOHFNVrdJiXZdbZNRKBd1H0NOJ
	YcNHsKgDstpQc6dRWzwNIoH4ds7/IQ0Vt/D0alfzXH/DhufjP4Jf14IXyNvtpa0dnDoHRBqCZEt4s
	bzyNpxCGETq6CoYb4HiBiKpx1tNvoO5pUV1zKvNMzCeSsHcX3orGkbJ6hIm+fok0DJAq0GivW7KjB
	Rd2LWn5SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikni-0002uf-9v; Wed, 03 Jul 2019 19:20:18 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiknZ-0002XA-RC
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 19:20:11 +0000
Received: by mail-ot1-f67.google.com with SMTP id r6so3560869oti.3
 for <linux-nvme@lists.infradead.org>; Wed, 03 Jul 2019 12:20:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/k104FOahdvu0qyoa9uw+a02NW33+x9nGA9ahr5+Leg=;
 b=FxUY+zaTwVrNLmEa7r56Na8TFDBZXnqE4CGh2wZCAgugOlNlZiT+RCSLrIzR9e/jNm
 wBxyu42sJJ4SFsAi+rqmUjgGj78SoebH9G6v6fu8NnlRingT/fYeBwyo2jSdHy65cZvh
 cNRkaw4+Klp6YyA82fjHG1yTpjO4hoSv7kKNtWdwUs4Jrb0jzN7Cf/7qSdk/l965GFx/
 q912iifBWbgsSkEAcRWtMMbMtBirgZHAyUB8uzi7lHaS2Goou3OzGfhaerM1Y+4YNLCu
 eCdatxZ98MSXfZocQmAX/+tUO770X8bkdfwDODUm855kStALdyhD1JWdHMocK/tuuEKr
 yjNQ==
X-Gm-Message-State: APjAAAWO7n/V1TBrqDb8r9K5SRH/Cn7IdvrvQHy/meSkMNZ9UbHdSVmU
 MRac192nuD3/5RTD7DPSPoU=
X-Google-Smtp-Source: APXvYqyRxZlLqJuCHWnSVxOEe2w6Xjch8rKf1jqpvI/z8B3mwIaTqxXG4PBOhYU5a/nzdHtlBu2JyA==
X-Received: by 2002:a9d:2c41:: with SMTP id f59mr30869696otb.268.1562181606225; 
 Wed, 03 Jul 2019 12:20:06 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id e205sm1088447oia.23.2019.07.03.12.20.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 12:20:05 -0700 (PDT)
Subject: Re: [PATCH 0/2] Fix use-after-free bug when ports are removed
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
References: <20190703170136.21515-1-logang@deltatee.com>
 <e88bed6b-c487-e224-1434-ba9912495a33@grimberg.me>
 <c072210c-1f44-2803-4781-15ff6f72a07a@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e7f0ae6e-9a72-0640-12d3-1683f9950a13@grimberg.me>
Date: Wed, 3 Jul 2019 12:20:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <c072210c-1f44-2803-4781-15ff6f72a07a@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_122009_883639_A0CD7917 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Stephen Bates <sbates@raithlin.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Can we handle this in the core instead (also so we'd be consistent
>> across transports)?
> 
> Yes, that would be much better if we can sort out some other issues below...
> 
>> How about this untested patch instead?
> 
> I've found a couple of problems with the patch:
> 
> 1) port->subsystems will always be empty before nvmet_disable_port() is
> called. We'd have to restructure things a little perhaps so that when a
> subsystem is removed from a port, all the active controllers for that
> subsys/port combo would be removed.

Yes, that is better.

> 2) loop needs to call flush_workqueue(nvme_delete_wq) somewhere,
> otherwise there's a small window after the port disappears while
> commands can still be submitted. We can actually still hit the bug with
> a tight loop.

We could simply flush the workqueue in nvme_loop_delete_ctrl for
each controller?

Might be an overkill though, and its risking circular locking in case
we are going via the fatal error path (work context flushing a different 
workqueue always annoys lockdep even when its perfectly safe)

> Maybe there's other cleanup that could be done to solve this: it does
> seem like all three transports need to keep their own lists of open
> controllers and loops through them to delete them. In theory, that could
> be made common so there's common code to manage the list per transport
> which would remove some boiler plate code. If we want to go this route
> though, I'd suggest using my patches as is for now and doing the cleanup
> in the next cycle.

Then please fix tcp as well.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
