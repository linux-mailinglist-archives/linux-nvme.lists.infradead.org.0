Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CB039BB3
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 10:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4othx1iTXfWN6LlMYZk4LBP9BW/+Com9Ip3MiwPF+0=; b=l8B1WvxfiQ0rbL
	2NQXr3A0Lzonr1g2CuQpjq7KNwt5D1Kh2z0eEZuAskG/U8gkIfvT7Zx3p+ghZACKpAhsEwe0LT93f
	uxHzmR6tl1dw3YaKUIyRfMis6NcFRNrbM219hXK2twXXdFeNP7YDTXa+0bLWkcpEaULU2p5LEvNS7
	kykjSD/DTH6P/JwUlCmwr7IGjB0qPiRdVq9YOi/4iRoLw7tlFYhvKGmLyjeqFadFnR6gTfFTAO6gB
	9vmlAQqNbJNJcHMe9I5100slpAWe1a4BGjYkTPKGfh7bQdo97GGTysgPcf5OL1cZ9+K9ztSlwhW/Z
	SK1B2OMyi4OOkS0IL2VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZWRH-0007TJ-HB; Sat, 08 Jun 2019 08:10:59 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZWR6-0007SR-4y
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 08:10:49 +0000
Received: by mail-wm1-x343.google.com with SMTP id u8so3880700wmm.1
 for <linux-nvme@lists.infradead.org>; Sat, 08 Jun 2019 01:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=A/98s+ZxLWi2AxlogIx4Ijtu1jW2DrfDadsqadJKMuo=;
 b=pCcz/EmJC6hgluYq5PvYf+aGmHKDD1vCR1Mi8XWSw3otEtjhq3rifcApmd4NBMij2u
 4D/9i3hBYMZtDWxnNb/MRtGSwBaNiUODq5uH7spiDBk+aEdHwroZ7t/JVmnwBHw/mZPF
 HpV4REQHX2jRfSIU7PK34BCZL3Ftv9jurqOR/QisIAK4GkHhmecp9epktkhQj6IBRzqw
 UifbYQdqC1H/rLMt+5f4T66G9gCzdE+oZZ7tO+JAQH4DkJEvozPUxWoe0XpBQqPhCK3q
 87fnqNTeQ68yHyg6gKX1/O24jSKM16QaXQAWgLHh7coxgbFXkJIErPwfcQ3TpxqXhI8p
 uxVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=A/98s+ZxLWi2AxlogIx4Ijtu1jW2DrfDadsqadJKMuo=;
 b=PeO0rI1kCs85XBx52yDlBCQgD1ytUo205GWyDNhbZbxKsINSC08kZSMnoK20E08c3I
 ejYzB4A6geFHy//VT6jXBbpyRT4WfTE1DrgzxF1iOFCmLNRw47HMEAMRyfjCQeNFdZ2c
 T2Et8+Wkgt3XlXkTWSnVb23O3DMu5YDF6MJ03m81LrcIIWwFbRJ0C+zcBq9/1NfYylxJ
 KiXXwxuBo57sXRX3Wa3MmK5y6acC2vU4BcFxiu74XHU04IwJYdQKimr28qb06Kn7XGD2
 deFgM3OjQrUwWMg6biv6s3A6TEaWhMHA4/S4LjGlRgXYtPJDG+uRpO7UnvR9uwEaV/+n
 hLcg==
X-Gm-Message-State: APjAAAX9bBuMdqSmdJrlN8KMGwLpnx5NjuUJkQJU8UVRKu0o4ikTGsxx
 mz41SDWi6jkqxg2kPvcEcl3m/w==
X-Google-Smtp-Source: APXvYqxzdnROeTHjScvyEAbURnezUITWgF87dJmRZvr0Lb6G4TViG5IoiBIGZmRJaGL6s4d+RprNoA==
X-Received: by 2002:a1c:e715:: with SMTP id e21mr6683506wmh.16.1559981445791; 
 Sat, 08 Jun 2019 01:10:45 -0700 (PDT)
Received: from [10.97.4.179] (aputeaux-682-1-82-78.w90-86.abo.wanadoo.fr.
 [90.86.61.78])
 by smtp.gmail.com with ESMTPSA id e17sm3849742wrt.95.2019.06.08.01.10.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 Jun 2019 01:10:44 -0700 (PDT)
Subject: Re: properly communicate queue limits to the DMA layer
To: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <20190605190836.32354-1-hch@lst.de>
 <591cfa1e-fecb-7d00-c855-3b9eb8eb8a2a@kernel.dk>
 <20190605192405.GA18243@lst.de>
 <f07d0abf-b3eb-f530-37b9-e66454740b3f@kernel.dk> <yq1o939i9qh.fsf@oracle.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <379c82a1-f61d-7463-791e-57f1cdeaa9db@kernel.dk>
Date: Sat, 8 Jun 2019 02:10:44 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <yq1o939i9qh.fsf@oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_011048_238121_7A17AC1C 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-usb@vger.kernel.org,
 Bart Van Assche <bvanassche@acm.org>, Sebastian Ott <sebott@linux.ibm.com>,
 linux-rdma@vger.kernel.org, Oliver Neukum <oneukum@suse.com>,
 linux-mmc@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Alan Stern <stern@rowland.harvard.edu>, linux-scsi@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, MPT-FusionLinux.pdl@broadcom.com,
 Christoph Hellwig <hch@lst.de>, megaraidlinux.pdl@broadcom.com,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 6/7/19 11:30 AM, Martin K. Petersen wrote:
> 
> Jens,
> 
>>> The SCSI bits will need a bit more review, and possibly tweaking
>>> fo megaraid and mpt3sas.  But they are really independent of the
>>> other patches, so maybe skip them for now and leave them for Martin
>>> to deal with.
>>
>> I dropped the SCSI bits.
> 
> I'll monitor and merge them.

Great, thanks Martin.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
