Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 773E867BDA
	for <lists+linux-nvme@lfdr.de>; Sat, 13 Jul 2019 21:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Subject:In-Reply-To:References:To:
	From:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6x+RGru0ODgOWIfFFSbKMQW9g+2KNftQhvTNiMQeI/c=; b=CSQxl9naJCP0lBIPoQBUAo+ia
	5nX57r6390CObxxQL01R7L7Y61aizdkWpd0Fd5mZ4TvSqtbh3KfrOFTK2R9jsWflrHtoykzGS5dwM
	E1WYep8ZwccaC+X4ljOZvi9maLfiPu7hZG97lwGZQ/dwoEj1ebpMHGUU6QQnHXEnGhZYbSMFpXJwX
	+bLp68gl2G7O8EmzppoEMNAPO/XNiM81adMPHFyUOZd4Dm/lXiaUYVn18hPYvvcENbKNuPUu5k4si
	IuJio+1jK56t7OM/iCL7f77FOQPCB2qqDoo+2qWj/A6uUzOLuSIO0Yf0P01r2HwXaxptNzjdKlBVP
	KQcPt+aEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmNxz-0002Is-AE; Sat, 13 Jul 2019 19:45:55 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmNxt-0002IT-5m
 for linux-nvme@lists.infradead.org; Sat, 13 Jul 2019 19:45:50 +0000
Received: by mail-wm1-x342.google.com with SMTP id l2so11654405wmg.0
 for <linux-nvme@lists.infradead.org>; Sat, 13 Jul 2019 12:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zadara-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:from:to:references:in-reply-to:subject:date:mime-version
 :content-transfer-encoding:importance;
 bh=ugvWrJVNsLP/YrqaIxySE5zAy3OS8UM8ZoLU0wS3ANA=;
 b=QHQDOo29ewjmNw/zm3iD/npDA8d6FM8QgZ1d02eXB9mQ+oZQOHSGJFAYHEyJJgd9I0
 homybqACg8RfvqqR4XAseMExWR5VlASdPS4eV3deC3atZxEWWS6f0yPIGV4YVDtWv4Wi
 505Oenk9Nlf+CTHdUpxHKLUjgqG2gSbGQBrBfU2+EhNFmKisyBzjYlz4RM9gWktlGS8R
 c4A2D1jUAgVAER77x1vNyO+OrS8+gb1VTpJmATC9Kz5fideQzBE57w8wB7EbigHFL+cd
 3r3tw9j/htHDM3W0lX3Dmu+I/sT4LEhVxCnKEgDsC8iF/6ehvQHRMaM8ZDyP8tjr0Ync
 wQoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:from:to:references:in-reply-to
 :subject:date:mime-version:content-transfer-encoding:importance;
 bh=ugvWrJVNsLP/YrqaIxySE5zAy3OS8UM8ZoLU0wS3ANA=;
 b=iBmUaJsgXuphVdKFOj+6lH5gKpSKfLvhjOzJkDccCznpAQZowBBcIfivEuX19+BkDa
 /OFh0lf7I+ZGM9NitIdJv7Gi4c0qyMvRuLaIpqfK48NdOQtTR4cXst76w6PdIa9bCWKO
 tih0FmFcCK3az/8T4a6d+7nUURaAShX2DKXLiDu7CHHdGRR9e1GP2jPdUJN2YaLSW+ZZ
 /MPap4l+uEcudXaEOUAGY9gOyjvzzsQFP4MocntDzeHmHzBXUNHWawZ0RFuCuQXjkRXj
 F8z9/YbdLOxPJiGBmwu8aYgQNqBMVhpxgp518qs6L9HborL6OiXq0+b1TZL4dBri5oMP
 btTA==
X-Gm-Message-State: APjAAAWa3uoahQvxeKSApgz4oUoHZlRl8yLHLnua2vWxlNLyc9f4NMRh
 NFOs0ZiG9feTNKFQ8Bqveh7iqQ==
X-Google-Smtp-Source: APXvYqzzGdISjLXzW6Ym6z0zWEMNiUWSq8c+ZzEPbjCNuGI5d1DsOQGUbwRAaYhzxIqlcg8BnhmZNQ==
X-Received: by 2002:a1c:f009:: with SMTP id a9mr15083648wmb.32.1563047145116; 
 Sat, 13 Jul 2019 12:45:45 -0700 (PDT)
Received: from alyakaslap (85.64.246.209.dynamic.barak-online.net.
 [85.64.246.209])
 by smtp.gmail.com with ESMTPSA id n3sm10343245wrt.31.2019.07.13.12.45.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 13 Jul 2019 12:45:44 -0700 (PDT)
Message-ID: <B3E9005C4E4645628157970AE2A385C4@alyakaslap>
From: "Alex Lyakas" <alex@zadara.com>
To: "Sagi Grimberg" <sagi@grimberg.me>, "Max Gurtovoy" <maxg@mellanox.com>,
 <linux-nvme@lists.infradead.org>, "Shlomi Nimrodi" <shlomin@mellanox.com>,
 "Israel Rukshin" <israelr@mellanox.com>, <tomwu@mellanox.com>
References: <F7E28AA1609E4FC495B5E8D4250E7DEF@alyakaslap>
 <90599926-b7ec-8431-a7aa-c44fde08b5c4@grimberg.me>
 <ec4fb8df-98c4-fffc-7581-5245c397d16c@mellanox.com>
 <66ACE500178B47D6B39F23FE98D22363@alyakaslap>
 <b6443a7c-4be6-3dbc-0535-a8ded3261c50@mellanox.com>
 <8ab1fa5e-2d67-5128-93b5-2f32704869e4@grimberg.me>
 <28046c97-c271-dff4-5252-4b5668c7bfb7@grimberg.me>
In-Reply-To: <28046c97-c271-dff4-5252-4b5668c7bfb7@grimberg.me>
Subject: Re: NULL pointer dereference in nvmet_rdma_queue_disconnect during
 bond failover
Date: Sat, 13 Jul 2019 22:44:01 +0300
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_124549_359526_98D9C447 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Sagi,

Which kernel this patch applies to?

At this point the environment I used for nvmf evaluation is not available 
for me. I will make an effort to test this patch, and get back to you.

Thanks,
Alex,


-----Original Message----- 
From: Sagi Grimberg
Sent: Friday, July 12, 2019 10:38 PM
To: Max Gurtovoy ; Alex Lyakas ; linux-nvme@lists.infradead.org ; Shlomi 
Nimrodi ; Israel Rukshin ; tomwu@mellanox.com
Subject: Re: NULL pointer dereference in nvmet_rdma_queue_disconnect during 
bond failover


>> Hi Alex,
>>
>> Not yet. Our fix is in the Initiator/Host side and it was merged.
>>
>> This is on our plate.
>>
>> In case you would like to send a patch to solve this, we'll review it 
>> of-course.
>
> Does the attached untested patch help?

Alex? Max? 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
