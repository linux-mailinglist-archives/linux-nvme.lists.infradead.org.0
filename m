Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB327147A
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 10:58:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s8P2gY9LmadFstv1Qmf3g54GTj0sls+rB1FT9wKTKec=; b=UhuXE2kkAK6jdKl9XYAyB4iB+
	g+YSn0uYaiilCp0tNLFbSlseDKUMiL7SHLm3NtVoaTwfXKfFcRemISah5aSYBJX6HnZp2G/ubbFxw
	Zy1ATB6ZWvaBApljfiAFNKRf3zKxv025VSs53eNS9Js3RBH+dOzZ5yHnUYgi3P80Mcuq2pSr7R2OF
	QHnAQZj5HDt9jf7RCa4TGV+A0oYtTG8c3E8CAiP8LXYMRAWCfrVv0YsVfhSGuicgwjmbFV87/5y6S
	7EX3TKyAPs1sO9G6/z9WlFfcstNaQQLil0WiygKXGLqDCyPyT0xZ6+q5/ZIA/czud+4WRbVohoODd
	+GuxCQIDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpqcv-0006B2-Hd; Tue, 23 Jul 2019 08:58:30 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpqci-0006Af-J9
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 08:58:18 +0000
Received: by mail-lf1-x144.google.com with SMTP id r15so11779804lfm.11
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 01:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lightnvm-io.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=iErYa2RVYztezRXqVs0Pua42MyYK7VTFo66vgy/v/WU=;
 b=YYNw5s4Qb9OxSEPDzRxzu0E/EdnYo0IkfE458pMaZtUhyCUo6XuWBHOA4EudGb35Zc
 f5oWs1Dg4dCsuDKdlUnSms/XevkKyVQFqxl2LmkaLLRnkbUNaDkeHpKoxWs42Df5CgvZ
 PUP20nxTVr3WlCQeSbmA0Avr5QItb+epyGGJBbb88aEQG1oV7953y/pycmllFeKuH4rk
 bIw7qsBmZ7WPVLowHbZOGrmKGMFhIHzOfoYtneRVeYvegNporCfdcgdbsdzD5E4aDoWK
 atv2wxCOnYVkSC55q9c8R0QmxG/ps6Jaz8zGPr8G9mMG11463huqmSInGvRiKZ8NnFaZ
 jnNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iErYa2RVYztezRXqVs0Pua42MyYK7VTFo66vgy/v/WU=;
 b=uOKjePZKdibEOMQ8bcRA+ct4Iyv5CLDKgjfalriXQE6Y/jFVCiz+B1wmdfR1wtI9Ik
 GRS9xGurUGSc387WOWORqz4847Ns/MiDuWXQZ4Zu3EpvjLPT266pelHaWEY1YNHmlvsO
 iRDrVizsLFmnB7waRQyBoJ6jnuhpU/Ca89het0qiCUQbPjiQ9dz31bTOQQ9+fgHeD8GK
 NRCYFEePyUT8OGBevR9dKAzgGKLJNT3+2m6+kFp4sipzSCZOl4QvVYLyeZvMmdecNh36
 UdO9f+l5MevbnCVOwqlGyiUKdj5BAAkolpPIJg/gsevGoH5ctc/WP7Acw3HWx2eruQjX
 zM+g==
X-Gm-Message-State: APjAAAUiTVZ4/sB4oDneIkiHyEuPXFA6nVx15Y9Osp2rysErMtMRjidY
 FLtjkEG4HjyA29nYP7/SeQY=
X-Google-Smtp-Source: APXvYqy9k3Jyn8l8n3IU+rKCpv88KvZDXnhq5/zuNVk4FPma4rhLjUe3kmFpyr7g898Fz6LundN9eA==
X-Received: by 2002:a19:c503:: with SMTP id w3mr30758270lfe.139.1563872293042; 
 Tue, 23 Jul 2019 01:58:13 -0700 (PDT)
Received: from [192.168.0.36] (2-111-91-225-cable.dk.customer.tdc.net.
 [2.111.91.225])
 by smtp.googlemail.com with ESMTPSA id p9sm7990868lji.107.2019.07.23.01.58.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 01:58:12 -0700 (PDT)
Subject: Re: [PATCH V2 0/4] lnvm: minor clean-ups
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
From: =?UTF-8?Q?Matias_Bj=c3=b8rling?= <mb@lightnvm.io>
Message-ID: <744d9561-0710-6428-6135-cb1902fc66ad@lightnvm.io>
Date: Tue, 23 Jul 2019 10:58:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_015816_694678_7B14BAEC 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>,
 =?UTF-8?Q?Javier_Gonz=c3=a1lez?= <javier@javigon.com>,
 Klaus Birkelund <birkelund@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/21/19 5:32 PM, Minwoo Im wrote:
> Hi,
> 
> This series is nothing but a clean-up patch series.  I hope it's not a
> just code churns, but a good start to do something for lnvm.
> 
> The first one removed a redundant whitespace in the command description.
> The second one removed unnecessary print for the sizeof(dev) which will
> always be zero in case user does not give any argument for the device.
> The third patch removed temp variable instead casting the pinter
> directly.  The last one just sync-up the kernel UAPI header file to the
> latest.
> 
> Please review.
> 
> Thanks,
> 
> Changes to V2:
>    - Resend the series with the latest patch commits.
> 
> Minwoo Im (4):
>    lnvm: remove redundant whitespace in lnvm_init()
>    lnvm: do not print 0 when the arg is not given
>    lnvm: cast identity structure to (void *) directly
>    lnvm: sync-up uapi lightnvm.h header from kernel
> 
>   linux/lightnvm.h         | 52 +++++++++++++++++++++++++++++++++++++++-
>   nvme-lightnvm.c          |  7 +++---
>   plugins/lnvm/lnvm-nvme.c |  8 +++----
>   3 files changed, 58 insertions(+), 9 deletions(-)
> 

Thanks Minwoo.

Patch 1-3 looks good to me. Keith, feel free to pick them up.

Patch 4 can wait until there is a use for the data structures.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
