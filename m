Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3617FA92
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 15:34:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zBOn9KwNRv8jJBLxxGy5EOvbepQdThBPmiKQvh1UwiI=; b=ueLkqAL1TksLE8
	KvvAJ8wSiuKZeh8y0BrA2GwcVlpYLdArQDavnxIguy66mX8z6cgfgnnM3phCBqoihl2Be4s5iPPAK
	JlXhb2UlnEBZMpg1LqjLF0u8OHpY6CGe43AFxeL00Q/Eg7+Qh7x6hEmgn0BGHZNfSJn0LESefynE6
	smaGfWNxKov8EZI5ZJupCm3Ub2gqrGVo52rN8f593TCqj/b2nsXdM9FsDQxnCkR+WNMNC6dLLt8Ty
	nvs/dZZ/wIpv+1GBNDSoX3Q3g09b4VcQH95M6QhyLqoehWY4BSlKA3adkffhtirVa84sB3QMaCEqc
	dxlHKuaTa2Cof5MyIMmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXhO-0004vR-7g; Fri, 02 Aug 2019 13:34:22 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htXhI-0004uu-Le
 for linux-nvme@lists.infradead.org; Fri, 02 Aug 2019 13:34:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id g2so36070133pfq.0
 for <linux-nvme@lists.infradead.org>; Fri, 02 Aug 2019 06:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Uv11iay6UFn4yJKiuRstOy4WPPsctn3pPbReDqThk3Q=;
 b=kRGXaQzIzBD52EJQZLvx4W+R0mDukgkxPnTUtTJlin+4rhjjL3JwTS/DVVx5rwAkSa
 SIWKf2ijtW91Uttw2C1OI59ojRKF9ryFw8rVixagdxpZTimERrrCNasTGB5/stbhoari
 +i3LXap+w1gTBsArj8PxA2/skOLPWE3VOP8nLSd6EST6CCsevy3JQvSmilf7ie9ynLMQ
 /W/JIrlISKOvINrxvwJqf4wbqIFZh+EhwSBmHBfnY8+hi6Qv4U3RQFux+3WROQ6WpAv/
 p0TVqRVUi+DcebHtKU9uGycN8/+n/kp1eD6FBxPvVC7DsDZVXYagIhXsUwGkOyIpqPPV
 7Baw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Uv11iay6UFn4yJKiuRstOy4WPPsctn3pPbReDqThk3Q=;
 b=C77zzLbnFilpOBVFjjZO+zPPmbnxRJ65Hk1WfJdftN/fiiaGrOBaPR+Expob19JlG0
 o99NFxfrSg+TZ9U5KkxntnadnAGaQ17AJCId598OALu/rrre3PJ9ZVipHXQoLGjmfAXx
 EmU9sVqgCb2PN/5fPDqhE5FvChYpcVXu06ggFGjXy8p1x577T/0FJAdIELuCkoLLf3ni
 mighy5BcKsy+2NtJ9mY58zH5Ss6H/4MAsmnxz65JeHlKVZceXy1mdq78r00JRK+t3xH5
 UdL6PiW2HeYza2BYJZpKMcHtouy4lsKrIL7Wb82fbu/QiVssXtvtccOmWFtb6yZyhnyN
 8gfQ==
X-Gm-Message-State: APjAAAVRo6Z8gT8DKtoxpwQE9wb2mpsTUrxvEeRnWcDALmkE5mdeoBLw
 nuKQRE31b3MDssMo2Rs825s=
X-Google-Smtp-Source: APXvYqx/wS2ev9Ujce/PRf10xzsSqr2moZjX9x1IBr/b4cR0jjJrYFw4BFRr9McpP2lKE+D895IgUg==
X-Received: by 2002:a17:90a:36a7:: with SMTP id
 t36mr4347365pjb.34.1564752855745; 
 Fri, 02 Aug 2019 06:34:15 -0700 (PDT)
Received: from [192.168.200.229] (rrcs-76-80-14-36.west.biz.rr.com.
 [76.80.14.36])
 by smtp.gmail.com with ESMTPSA id v12sm67199728pgr.86.2019.08.02.06.34.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 02 Aug 2019 06:34:14 -0700 (PDT)
Subject: Re: [PATCH V2 0/5] blk-mq: wait until completed req's complete fn is
 run
To: Ming Lei <ming.lei@redhat.com>
References: <20190724034843.10879-1-ming.lei@redhat.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <040caa53-897e-287b-00be-7541bce88b7d@kernel.dk>
Date: Fri, 2 Aug 2019 07:34:13 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724034843.10879-1-ming.lei@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_063416_757573_C930ED28 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/23/19 9:48 PM, Ming Lei wrote:
> Hi,
> 
> blk-mq may schedule to call queue's complete function on remote CPU via
> IPI, but never provide any way to synchronize the request's complete
> fn.
> 
> In some driver's EH(such as NVMe), hardware queue's resource may be freed &
> re-allocated. If the completed request's complete fn is run finally after the
> hardware queue's resource is released, kernel crash will be triggered.
> 
> Fixes this issue by waitting until completed req's complete fn is run.

Queued up for 5.4, thanks Ming.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
