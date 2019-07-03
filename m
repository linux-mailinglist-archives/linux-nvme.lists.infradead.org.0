Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 510BD5E106
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jul 2019 11:29:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Subject:In-Reply-To:References:To:
	From:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gxT9sdN4R5DZBs8OuUsUF2o5AShs9S6DwGNncUPUCiE=; b=a8Whw4MDI19XNHZ8HT0N3fqVT
	aTw1PHlNeMCboeZzNRrpApZQdRKP94fOMDRVH2Jl0zg9w+rSSAmgsOOKOGtDaCNrz+jkjdZbcyi0+
	0A0+cO/WgCTEqVHTf3/B3vd5Wf2wIu0vpphctB7YyVNZPD9dOwVza4Ps7agZvdNmEUUY8yBY2+3il
	SkvHW9Y8xGqqQHM0+IYRc2HcYefr8/r9ZPcemhCHk3nn8CpjRAfyGPYB4YWVHqkb5b6C3OvwxL/Ws
	9eDDxaho+NiuQXRRokEpu40iFuCRC13q+tmmvDXPnI+GSA3zH15J+f4yPUu7RJtfD1gDrm5F2UBaj
	rS2axZNfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hibZi-0001cl-Su; Wed, 03 Jul 2019 09:29:14 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hibZV-0001bw-83
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 09:29:03 +0000
Received: by mail-wr1-x444.google.com with SMTP id u18so1964554wru.1
 for <linux-nvme@lists.infradead.org>; Wed, 03 Jul 2019 02:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zadara-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:from:to:references:in-reply-to:subject:date:mime-version
 :content-transfer-encoding:importance;
 bh=Rcp0hU2KHA4r7rFSR/uZKVIwVOn1tUbHtzoWQDBFxlM=;
 b=Qabg5u0Jjg2MlGZNUhpV/IHwkQkJ9It+taCYYYUQa+CqqBuqWW9kMFCZOmqxtRGegJ
 f7e4uzjl38rE7ACeLdSxAc4ubc4aaoTRLPtkmFa81NWo9+NzGu5fOCo++2W0XiGpjGNt
 C5hgVtZmNmRpPXIj/LqQwG9PjrQko4RULrV6Ieh7H6LQD4dKHa1tQdJJuOXAWQ8UMJFs
 8VjpU1rk1vUlJResWajnWUm86zovRIXjiRvdPzn5/LAlNlhqmtdYm4lFqArohkIunMU2
 h+YkSSyyZsz7GP8UkfC9RtPqw+91T8HzODIgvPoN2NePO1a+m+sOAcxDCNUImfqCssBd
 dNRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:from:to:references:in-reply-to
 :subject:date:mime-version:content-transfer-encoding:importance;
 bh=Rcp0hU2KHA4r7rFSR/uZKVIwVOn1tUbHtzoWQDBFxlM=;
 b=il6opFuigLPsvsLC4hq6EwS+NNwtTwuVcXc9AZCaN5R1GTkY9knqGEGhVNYEukPm/X
 4mkElME6BqI6ym8BFjbd8J5o36OiRUoN6nE9FTJQSpWziETQlz4HtzUl3KKq7yKzAoW9
 3vy7sRFiZgBMTSomBLio8rJxHQ0ATiHyudFMK54+hSPFzmmeoguJJfrTZdvbm+jas73X
 JPr5na7eqoWk7YmInMVlkfe/tfb0goMVkDo2ufHZ7VZFKmApyJ2ShLAw8343SuKXvqTZ
 kB9lz4/FjUUGGpRL2JdSbJvxhBM1beL8KXtioRTQS2o1WhYZPA9gNXOcoRdKkzlVhXHT
 TBsQ==
X-Gm-Message-State: APjAAAU/5ERGCeRfQiWhnaBS6bvAkOimTK60phc6TnfvDqz+Ff49qogE
 th9OheQEzgbBHhxFhd8lMUReT3y4SBU=
X-Google-Smtp-Source: APXvYqxNIbF49ZEU2N5QXxgA+xonR02AJ9EAWQeahBj1kMMNy6yIs8vHGfpBHPgLPX73UIPYngKaoA==
X-Received: by 2002:adf:de90:: with SMTP id w16mr27631975wrl.217.1562146139059; 
 Wed, 03 Jul 2019 02:28:59 -0700 (PDT)
Received: from alyakaslap ([82.166.81.77])
 by smtp.gmail.com with ESMTPSA id z25sm1378327wmf.38.2019.07.03.02.28.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 02:28:58 -0700 (PDT)
Message-ID: <66ACE500178B47D6B39F23FE98D22363@alyakaslap>
From: "Alex Lyakas" <alex@zadara.com>
To: <linux-nvme@lists.infradead.org>,
	"Max Gurtovoy" <maxg@mellanox.com>
References: <F7E28AA1609E4FC495B5E8D4250E7DEF@alyakaslap>
 <90599926-b7ec-8431-a7aa-c44fde08b5c4@grimberg.me>
 <ec4fb8df-98c4-fffc-7581-5245c397d16c@mellanox.com>
In-Reply-To: <ec4fb8df-98c4-fffc-7581-5245c397d16c@mellanox.com>
Subject: Re: NULL pointer dereference in nvmet_rdma_queue_disconnect during
 bond failover
Date: Wed, 3 Jul 2019 12:28:55 +0300
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_022901_422607_E9212B53 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Max,

Has any patch been sent to resolve the kernel panic in nvmet that we are 
seeing?

Thanks,
Alex.


-----Original Message----- 
From: Max Gurtovoy
Sent: Thursday, June 06, 2019 10:31 AM
To: linux-nvme@lists.infradead.org
Subject: Re: NULL pointer dereference in nvmet_rdma_queue_disconnect during 
bond failover


On 6/6/2019 3:05 AM, Sagi Grimberg wrote:
>
>> Greetings NVMe community,
>>
>> I am running kernel 5.1.6, which is the latest stable kernel.
>>
>> I am testing a nvmf kernel target, configured on top of a bond interface, 
>> for high availability. The bond interface is created on top of two 
>> ConnectX-3 interfaces, which represent two ports of one ConnectX-3 VF 
>> (with this hardware a VF is dual-ported, i.e., a single VF yields two 
>> network interfaces). The bond is configured in active-backup mode. Exact 
>> bonding configuration is given in [1]. The nvmet target configuration 
>> doesn't have anything special and is given in [2].
>>
>> I create a nvmf connection from a different machine to the nvmet target. 
>> Then I initiate bond failover, by disconnecting a cable that corresponds 
>> to the active bond slave. As a result, I get the following kernel panic:
>
> Max sent a fix exactly for this. You can test that it works for you
> when he sends v2.
>
> Max, care to CC Alex when you send it?

Sure, No problem.


>
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> https://eur03.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infradead.org%2Fmailman%2Flistinfo%2Flinux-nvme&amp;data=02%7C01%7Cmaxg%40mellanox.com%7C9879366f21df4e7f4ce608d6ea12c41f%7Ca652971c7d2e4d9ba6a4d149256f461b%7C0%7C0%7C636953763648159480&amp;sdata=UtkpvcEM9%2BBBdj68Kx6bobMWkeGSp1Jz3yJXxH8MLgY%3D&amp;reserved=0

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
