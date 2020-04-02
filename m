Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC7919C5CB
	for <lists+linux-nvme@lfdr.de>; Thu,  2 Apr 2020 17:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DAH18OB7JHcSyPl/+qj/H6gVSpUeKjzSAw7CX/4E3W8=; b=Iv+AeyAQ7CDgPEEGjZIB7IJSW
	AeYuP0RheaYxEvH9FSYuNVYHvv5Sbxuy6Un9Y97A64DTgOg52CSBj850UHxtQa1eTgJbYy/UmRdGB
	B9mEVxXuQ4KvBb3PdG8DrVq2rXAx+RrUQo5h46/AdPlZk0462fpZ2LXSvI/T97RAD43BPY0T0Px8Y
	V/Jl+RPesIPfWv4oDZOzOtw3Ni/VjDEVTOMYWVHWeeOiB3MjMNDCJ1QRGCMIRU004QAQlzz6Ge28o
	57RFjtQrFKbp1i3croPlwfHHyBSgL8SFZ9z3s0IbOU/dzTbQ3lxHckWA9ElA6Q8gRk5qLyi4EqIEO
	N74ofdk0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK1iN-0008Og-Px; Thu, 02 Apr 2020 15:25:07 +0000
Received: from mail-pf1-f178.google.com ([209.85.210.178])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK1iI-0008MU-6V
 for linux-nvme@lists.infradead.org; Thu, 02 Apr 2020 15:25:04 +0000
Received: by mail-pf1-f178.google.com with SMTP id b72so1888263pfb.11
 for <linux-nvme@lists.infradead.org>; Thu, 02 Apr 2020 08:25:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=twxb4h7h3tKePPDPce2R/ybh/BLkMS1DOUGfdDIJJDI=;
 b=b7ca7QlN72I3TZ8uuhB8qG/ixSlkBKoVj1qDCzD4OpVaiumwZIq1nVgH75Df6GBIIr
 ivSHOBMKJCh18waIt6qblSM+7nhc0KSvgqZ8HxeqSIOqYCzgxTgdXIEC4CRFoJ54fz+E
 raY7Ib2BW1t+dp67YP6bfDsYtNhkyT6Wq6v+GXmMOKaNM48SExmgNv1sNH3PczDomKXU
 0VB9MqWtJWtraRm9wC7fuXUhhc2nLjqTMrlqe/Y898r1cNoaDp80vCI9/gNL7FxLB6s5
 x3a13ll4raWBXPqxwq6wb8ipN5YdeZLqj/5UoNsYl+RIQiPtQrZIjUqaxhEKozoSnLm7
 UbTA==
X-Gm-Message-State: AGi0PuY0JROSNNpRy73yfgI/intWCNq0yr+zoqh5Glyjfm67oueDLM4w
 Rkk2UcgrOoYNu4mK0uW2LDo=
X-Google-Smtp-Source: APiQypJhWHKqGkxJdPfJIqR658B70YlccbR2OHnh4exkguvS5tGU6fYq4oPBL36hV0RpJeQB6MUXkw==
X-Received: by 2002:a62:541:: with SMTP id 62mr3620854pff.5.1585841099859;
 Thu, 02 Apr 2020 08:24:59 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:a836:db4c:a7ac:3d7c?
 ([2601:647:4802:9070:a836:db4c:a7ac:3d7c])
 by smtp.gmail.com with ESMTPSA id ne16sm3928043pjb.11.2020.04.02.08.24.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 Apr 2020 08:24:59 -0700 (PDT)
Subject: Re: nvme deadlock with ANA
To: Christoph Hellwig <hch@lst.de>
References: <5e38c566-3f26-288d-1004-161d1084b468@grimberg.me>
 <20200402151854.GA11784@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <7fce512e-deb6-2357-d627-d1a698a8269b@grimberg.me>
Date: Thu, 2 Apr 2020 08:24:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200402151854.GA11784@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_082502_702025_4063BCDE 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.178 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.178 listed in wl.mailspike.net]
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
Cc: Keith Busch <kbusch@kernel.org>, Anton Eidelman <anton@lightbitslabs.com>,
 Hannes Reinecke <hare@suse.de>, linux-nvme <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


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
> 
> What does -> but blocked mean?

It is blocked and cannot complete, because of (2)

>> (2) timeout handler reference the g_usage_counter - > but blocks in
>>      the timeout handler, why?
> 
> The timeout handler obviously needs to keep the queue alive while
> running.  We could think of doing a try_get, though?

It is keeping the queue alive, that is not the issue. it is blocked in
the driver .timeout() handler (i.e. nvme_tcp_timeout).

The reason that it blocked and cannot make forward progress is because
the driver timeout handler will call nvme_stop_queues(), which is
blocked as this takes namespaces_rwsem...

There is a chain of dependency that is deadlocking with circular
dependency.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
