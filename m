Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A781E8000
	for <lists+linux-nvme@lfdr.de>; Fri, 29 May 2020 16:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=camotCO4wkM/XgU/wWOd9byZDHd+wQnMgPQXFMit+jg=; b=LWGrsLihoeFy+a
	XUz+UHLg01A7SKQsR0tkh6Kjx/tRWuxUL1pprZ1RZ4ve/o8SUGglPLyYMisB9cm4dku38o43Ryujz
	9laXhOUlzY55+MRmG8AWHakaid0bDFY2+Ycy6ivTIbJtGiXh6naQ0g/GTmvptlSc/B4l0rrTFM6gI
	9WlD5vFSGTVIrh4TmhSDj4Otja9dl/VtVDSbX3PulAR3gtcJlZiqIxE+udSifTJs10M0EubLgZV/U
	Eyi3yprwg8wpsjWIBdMZn0J0zH21Xzy1kFjQa2eJ8uhgp25jLnj1gGDelq9qCEgFEceXiEWAzNNa1
	j6zpkmGI5GpHBJfmpy7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jefp5-0007xx-J9; Fri, 29 May 2020 14:17:23 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeflS-0004xK-Lr
 for linux-nvme@lists.infradead.org; Fri, 29 May 2020 14:13:39 +0000
Received: by mail-pj1-x1042.google.com with SMTP id ci21so1390238pjb.3
 for <linux-nvme@lists.infradead.org>; Fri, 29 May 2020 07:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sstDEw2eR7/x5s00uzGBoVK1nqE9b65b7cAMAqhOjao=;
 b=eE5upXYzk0pow1GTjkztlADM6NfVbrh/uHt+G1jl9EulITHptpOGivfgZ9UM2DZPeT
 QzDSBImSr62zvHA4fpZjPKoOgIad9kZyPX2Pg/8nuAQTJ3/2yu1dOc5WcOu99Kko/uk+
 JHHjcQeYVXofPi/9w67mwpp7taL/v8rnEtFjiUQt2+5HJT1HNIqLVfzk8C15zK0dRQDM
 HprQkgIl0QIfcdgkulZv6c2+BpjhhJc39zy3lRejrUhTw58N+xFCRBzYs65EUgEZZaQb
 C23jReqIIypb479CHVfyFfIhwVVplo1+96n+FWZRlsJS/ZWLbHO247w+VeMKyAtOGXp+
 Nwmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sstDEw2eR7/x5s00uzGBoVK1nqE9b65b7cAMAqhOjao=;
 b=k0TEehBAGNsOBgy8H/DnM5zvzYxfMLcUcyuSXdJN8dmhevUuj0Z5iazSC3mZsqIX1U
 bacdP5DN/ifEv77fv8D49bH5zDJxILXaxiZ4awzc/pGKpsxmbep06alh+OS9X/AEemIS
 kO3HqLWokCE+7GMIkg1yP28XTbqb51iACa0D17FzBre41wAwY9eUOUzHiBsbDbQ1W15g
 MFdRZJXS72oz4cvfFQcsMeCWBEY4Lavsq1XR8ICtrCZAIDMcn55nnBFqvGWDuHfBn2aI
 megabNShGP++s3TvbayYsR8zdy2uOFcWRrxFMrtQ55qzBQ4jJ+2kWjlEsUxcypa7J2PS
 +2Ug==
X-Gm-Message-State: AOAM530+ZJwotYLLe5YeJ0f+tY106t2+oY0xiMSOGUVYi1BtTAJxzdv0
 NYda68BIWMsUQcWn0imXyAYxyA==
X-Google-Smtp-Source: ABdhPJx/vZKTQwjkEYDfjCmjXR8SsS9x7O54I1G0OhUxjA27obWAm6HjQIWQQc+C6Ua+WQEtGiJQ1Q==
X-Received: by 2002:a17:90a:bf18:: with SMTP id
 c24mr9827989pjs.171.1590761617982; 
 Fri, 29 May 2020 07:13:37 -0700 (PDT)
Received: from [192.168.1.159] ([65.144.74.34])
 by smtp.gmail.com with ESMTPSA id d2sm6688603pgp.56.2020.05.29.07.13.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 May 2020 07:13:37 -0700 (PDT)
Subject: Re: [PATCH v2] blkdev: Replace blksize_bits() with ilog2()
To: Kaitao Cheng <pilgrimtao@gmail.com>, hch@lst.de, sth@linux.ibm.com,
 viro@zeniv.linux.org.uk, clm@fb.com, jaegeuk@kernel.org, hch@infradead.org,
 mark@fasheh.com, dhowells@redhat.com, balbi@kernel.org
References: <20200529141100.37519-1-pilgrimtao@gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <c8412d98-0328-0976-e5f9-5beddc148a35@kernel.dk>
Date: Fri, 29 May 2020 08:13:34 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200529141100.37519-1-pilgrimtao@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_071338_781923_C8A60C08 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Mailman-Approved-At: Fri, 29 May 2020 07:17:11 -0700
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
Cc: hoeppner@linux.ibm.com, heiko.carstens@de.ibm.com,
 linux-nvme@lists.infradead.org, joseph.qi@linux.alibaba.com,
 deepa.kernel@gmail.com, houtao1@huawei.com, linux-s390@vger.kernel.org,
 bvanassche@acm.org, darrick.wong@oracle.com, chaitanya.kulkarni@wdc.com,
 satyat@google.com, borntraeger@de.ibm.com, ajay.joshi@wdc.com,
 gor@linux.ibm.com, chao@kernel.org, josef@toxicpanda.com, ming.lei@redhat.com,
 jlbec@evilplan.org, songmuchun@bytedance.com, dsterba@suse.com,
 sagi@grimberg.me, damien.lemoal@wdc.com, martin.petersen@oracle.com,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-fsdevel@vger.kernel.org, asml.silence@gmail.com,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/29/20 8:11 AM, Kaitao Cheng wrote:
> There is a function named ilog2() exist which can replace blksize.
> The generated code will be shorter and more efficient on some
> architecture, such as arm64. And ilog2() can be optimized according
> to different architecture.

When you posted this last time, I said:

"I like the simplification, but do you have any results to back up
 that claim? Is the generated code shorter? Runs faster?"

which you handily ignored, yet sending out a new version. I'm not
going to apply this without justification, your commit message is
handwavy at best.

-- 
Jens Axboe


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
