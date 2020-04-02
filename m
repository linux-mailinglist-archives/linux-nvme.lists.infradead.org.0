Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D8019C6C4
	for <lists+linux-nvme@lfdr.de>; Thu,  2 Apr 2020 18:08:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fhmHRHW/vl0xbjvzPrT+o1HTJkPVjnp1B4kwTwKGxJk=; b=lSeqtbpSyin6MlgZb2qm+nLTv
	sZD45NJyN0+VLsxHIN7/rR75v762Gql355P4DW70BGX+xLcJMGu4eL+z+Tmk+04RlJfzNL1VZ9SjF
	5o1nakFM191myU8jUjJ/HRod1PRRQt24H+HfmyMVi3Atc7PIf2k25bK59iXYwfPMLW+T0AAvw4pB5
	Q70zRaADeFI4JIRHCgvrQThxBxe/628dPiCLjH2UOkxOIydM+RDTwB+3EJQmO1mhukN6epoxm60LS
	x/bnHRQoLt3YbmwvNllDsNDHGtq4LbTNnkHGMp5xfbRwdal3aHtAZPy9Vxy8yZ4i3eGcah1493fQD
	j/yh9qoxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK2OQ-00044R-T4; Thu, 02 Apr 2020 16:08:34 +0000
Received: from mail-pj1-f52.google.com ([209.85.216.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK2OL-00043f-MP
 for linux-nvme@lists.infradead.org; Thu, 02 Apr 2020 16:08:31 +0000
Received: by mail-pj1-f52.google.com with SMTP id fh8so1706742pjb.5
 for <linux-nvme@lists.infradead.org>; Thu, 02 Apr 2020 09:08:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=15vuOc2qIJ9WfpphI7qwO4VMsraiNgDx763wu5hEFzM=;
 b=myuLDCD8e6LDzNUk1glxVkBD85T7d4/J1s16JJLqzEV2y/lPhnOM4mMr/BTEse5wUK
 +jm1WcRIkUUg/mZISDRySj6M7iStr7nfgqyRbkV/UP8ttDOk9eV3a0vSoPxOBP/BucDU
 D/axVaMP16o5/OfnKU8AAnUS2QmJJWh29QBa8Qu3r0SOvE9ph44B2yrSKLh2V7T2+zai
 DrIMsAcUuYcObHZTH9zZONgIdzqnVcmBCcewICAf8F9rwYzwKbSVYKzqHS6ozo5QDTK+
 E05u7zwxZixyNlTHdOZh55d4+GMryyRpBjLmRL5T2f7XmtWXXFTBVeAxcqdrCg8RXwBs
 OIIQ==
X-Gm-Message-State: AGi0PuZgZd3Qx0fh575oD3SlA5cbIqM6rJjNMlccdBCWraNevdOgmHK2
 bErSYCW0lVUtPkCFO0cVhng1KGJD
X-Google-Smtp-Source: APiQypKmdg9Nf6gNAB43MOPDciFdUMLUjTJp5a+UWFm/o+sIyMJW1bLrGa3/a4uRqXSUoNLJUIYBsg==
X-Received: by 2002:a17:90a:2042:: with SMTP id
 n60mr4635323pjc.0.1585843708274; 
 Thu, 02 Apr 2020 09:08:28 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:a836:db4c:a7ac:3d7c?
 ([2601:647:4802:9070:a836:db4c:a7ac:3d7c])
 by smtp.gmail.com with ESMTPSA id q19sm3654699pgh.11.2020.04.02.09.08.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 Apr 2020 09:08:27 -0700 (PDT)
Subject: Re: nvme deadlock with ANA
To: Keith Busch <kbusch@kernel.org>
References: <5e38c566-3f26-288d-1004-161d1084b468@grimberg.me>
 <20200402160003.GA3901@redsun51.ssa.fujisawa.hgst.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <97402d87-2c3c-ff30-d537-6d17fd7df3b5@grimberg.me>
Date: Thu, 2 Apr 2020 09:08:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200402160003.GA3901@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_090829_731451_0CA2FF43 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.52 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Anton Eidelman <anton@lightbitslabs.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme <linux-nvme@lists.infradead.org>, Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Hey,
>>
>> I want to consult with you guys on a deadlock condition I'm able to
>> hit with a test that incorporate controller reconnect, ana updates
>> and live I/O with timeouts.
>>
>> This is true for NVMe/TCP, but can also happen in rdma or pci drivers as
>> well.
>>
>> The deadlock combines 4 flows in parallel:
>> - ns scanning (triggered from reconnect)
>> - request timeout
>> - ANA update (triggered from reconnect)
>> - FS I/O coming into the mpath device
>>
>> (1) ns scanning triggers disk revalidation -> update disk info ->
>>      freeze queue -> but blocked, why?
>>
>> (2) timeout handler reference the g_usage_counter - > but blocks in
>>      the timeout handler, why?
>>
>> (3) the timeout handler (indirectly) calls nvme_stop_queue() -> which
>>      takes the namespaces_rwsem - > but blocks, why?
>>
>> (4) ANA update takes the namespaces_rwsem -> calls nvme_mpath_set_live()
>>      -> which synchronize the ns_head srcu (see commit 504db087aacc) ->
>>      but it blocks, why?
> 
> 
> Why is ana updating occuring under a write lock? AFAIK, that should be
> necessary only if it's manipulating the ctrl->namespaces list, but this
> is just iterating it. What's the harm in using the read lock here?

Yes you are absolutely correct!

I think this should resolve the deadlock, as nvme_stop_queues can make
forward progress, and then the transport timeout handler will complete,
the timeout handler can decrement the g_usage_counter, and the queue
freeze in update_disk_info will complete.

I'll send a patch.

Thanks!

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
