Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1409C7D2A0
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 03:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RW4wmVbMVZAgDl8+vM3MiPL7LL1Ucf1ug+3o5ujS0mo=; b=LKpCIndsME5ywREygzml124kX
	PGxzOCrW+bzQaM+HDCd37KBDGfajj8WOH4gW8YKdAc2uRBjYLqKzISdseBlOckK+IWRu6wvLmVA0O
	49sUVRQefvmAGgxDbykJx3M0M1NcgkdahyP9XEPWPSJ0xr3LYbWn7EUm69KJbb16xEA3IzZssY8uQ
	wJtR5tzL4ozuKTsGAcL8dwMO+hZnv/m5WEsvFZN1KJ0stHRYt5AnyStzkKSjLwq0Wj3NEfFIkfUpm
	2Tqtk4O+sZ/wxiMpwGEN9pTW4N2633EqeOxuL1EeCUtubomFPnNCJ9u/a0lGlA85cAq7gZE/3kp9v
	Iye7pJneg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hszef-0006C9-9n; Thu, 01 Aug 2019 01:13:17 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hszeX-0006Bm-Td
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 01:13:13 +0000
Received: by mail-pg1-f195.google.com with SMTP id k189so13953755pgk.13
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 18:13:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HjXO4XH1+69y8SEtV/vH1Q5YxG64MfcLRdUjumFS9pg=;
 b=E4iPGHXSxBuTLF4aJqkEdaMvEv4jPL5Pu+Y/gnI7md5ulKnwYvyEx4YUphFoN1jiA9
 x2a2ogA8SUH5jpOuMsYvo2NJWG2jrkhEqqNupF2lRuEJtWuTveT6bwGJ+o4tvUARNeJc
 VH+HWfDmny8VFAEoMUNpPm4SyITH4ajryBvmdfhtf+ADH/47QdOaKjgBFN+kJUWtpms9
 DhDaItZqDPKgKmewVSJx9gb5GkjDnyHlVDKTXR3mXmXnpJQW4oRXlrChZrEQXo+0+k+Q
 PeXoiPt4nRTjH4sWYIHeIsAnSx3qS7gpW+BogMflsGnDJrECIKtE0N9uI5KlGqk53ewY
 QKGA==
X-Gm-Message-State: APjAAAW4KXo+j+UxCSIEwOMt6gRxD04+6FcFntq7ji9YuLPDvQ8irBCR
 qXDFOiF31//XocMKaVS3Mek=
X-Google-Smtp-Source: APXvYqw6YJy0bFc/N5OkMi2SKA8nfXvg04/miFi1VOG6x1vl9wpAWFB/Rgwy/GyLEVEji91H6KRtcA==
X-Received: by 2002:aa7:8ad0:: with SMTP id b16mr48396112pfd.45.1564621988604; 
 Wed, 31 Jul 2019 18:13:08 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:45eb:53c1:ba3f:2a0a?
 ([2601:647:4800:973f:45eb:53c1:ba3f:2a0a])
 by smtp.gmail.com with ESMTPSA id b126sm104691358pfa.126.2019.07.31.18.13.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 18:13:07 -0700 (PDT)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Keith Busch <kbusch@kernel.org>
References: <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
 <20190730173048.GC13948@localhost.localdomain>
 <61445d6f-f4ca-f8d4-cef2-5bfe40aa1e7f@suse.de>
 <2f7535ab-3d45-b24d-1512-a937e16e620f@grimberg.me>
 <20190731193257.GB15643@localhost.localdomain>
 <0720636c-8706-e927-3c0b-c2687694664f@grimberg.me>
 <20190731201634.GC15643@localhost.localdomain>
 <cb8a1faf-ea19-06c8-35dc-08cd11180974@grimberg.me>
 <20190731205836.GD15643@localhost.localdomain>
 <68358e82-cbd5-6199-1329-89421c778dc0@grimberg.me>
 <20190731215437.GA15795@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <55631812-bc90-9dc1-53b7-a76696a7140e@grimberg.me>
Date: Wed, 31 Jul 2019 18:13:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731215437.GA15795@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_181312_424369_B9EECC14 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Ming Lei <tom.leiming@gmail.com>,
 Hannes Reinecke <hare@suse.de>, linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Well, I don't think we should do that. Unlike I/O commands, which can
>> failover to a different path, these admin commands are bound to the
>> specific controller. In case it takes minutes/hours/days for the
>> controller to restore normal operation, it will be unpleasant to say
>> the least to have admin operations get stuck for so long.
> 
> Unpleasant for who? The scan_work is the only thing waiting for these
> commands, no one else should care because you can't run IO if you're
> stuck in very long reset anyway.

The hung task detector would care, and a user who will attempt to issue
a passthru command, and the rest of the system that have one of the
kworkers sacrificed for a significant amount of time...

> I think the main point is that we don't want to take a delete action on
> a transient condition, but sprinkling NVME_CTRL_LIVE checks is open to
> many other races.

Hence I suggested the transport error code...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
