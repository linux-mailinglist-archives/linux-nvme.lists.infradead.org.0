Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD1A2E02B
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 16:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tW6ZNGHtfkv2hz0wdupxJpceHTGYdgBn7uzZDyRktHY=; b=jbpPi+lEadlnpj
	Bq2sfegLW5xZsyHSjMU+6dLy6sulUunTielDDSevS/dDxhKtfCbUJSBYunJw/GR4xIA63VHlvIQYX
	Gz8Il2LYQiQphj2bTtNzyk5v49dpnzzVQFGzP/vkeH4uc4dMhrhvbfM54q3vQXvn+koD1vhcP7o6n
	7Wpx5j8agSu/d21KDm5xfVAxDdfykynXQWBUBZfLG7YjZ/NIAf2Wb5dAATcs+beoxM+7KthChHaYi
	THzxQ9yZIdn94YZlmQGGp9hczgmS33QZu/9VRa0VW+2ZyI44Qg6HMWVGXkDxGH8ef4111EtOBM+ur
	8SaJs9rBaQdFnw3nwtpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVzwC-0002ZI-V2; Wed, 29 May 2019 14:52:20 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVzw7-0002Yx-FS
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 14:52:16 +0000
Received: by mail-pl1-x642.google.com with SMTP id c5so1159855pll.11
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 07:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iDZ1/8shWn6ySKCpHlrViQ+Hx115WDYgPy31xQPcUS4=;
 b=WyB+cs6xwhdLZNt+9KytP4pdP+e7/r+tXWAnG9Wxco5g73PEmf8FXCjAg3518IBN1O
 WGVq3jVlTyjgzK8sZAJEZ765Ll4NOpgQ8gLGodi6uD7WC90B8IDIl9whR+YDZAIm+tZj
 lYs8xHfK4wn6NQ/KmfnwKZH+aOOIEemPD/kU2FP1jDEPppfN+fVklmnLWD08tkoDwdT9
 CQIDzbIKIcbwBv3wwfD7B/OdwxOj5iZ7O7tOJ3LwLKyX725VbHnPGPRtmHVhpVjkhs5d
 EzTtCJGQLPXwzLLmecNpZ89H8Pjz3xlz3ZlLdDbStu8B/epQXwtR01HOYIxKc4u+ksvL
 2rYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iDZ1/8shWn6ySKCpHlrViQ+Hx115WDYgPy31xQPcUS4=;
 b=aFR7Y3oCAqUC23DGlNfuVL7LSmDvT4vPoZQpfWgbVHVKowhP8hDW7GHnZOWr9PhVMb
 cYcaUTSWd12DByFvJgKcZApKrtLo2Xc2UoZFStylz6QDOnAmV8VjW0qD/TFWky1FopYW
 Du5FyccpaPGw9lNRiEuOlWYAKCdEKXn1wVLQisFi9YV1ERiJDo/tjYCDHob/rFaUKu6W
 eqHebY+lopaayNUjDeNYaOtbavxyaNELF5vNM96ytpkngnHtHYqDZmN3IN+KKjBxcV/s
 BwuW0CkGi1O1W+ZwbRofcNfUUx1BxKWIuZeHRvTYZ5P1/Qvbh+0ytmjw5UmxNA6/Od38
 b4eA==
X-Gm-Message-State: APjAAAVO+DUDYQLoUJKYrUn8DetcWreZ/j83c670eLUB3WZKnbcXGPWw
 tpREYiKqa7agw03I/LtecLE=
X-Google-Smtp-Source: APXvYqxs3Do7vDMrWIkuObf/ppl+1fcJhsy337X12+yUrdE6KNbxSVfp6Wjh1TzxJiLThIzk/Uo0Tg==
X-Received: by 2002:a17:902:bb95:: with SMTP id
 m21mr17050956pls.154.1559141534196; 
 Wed, 29 May 2019 07:52:14 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id j26sm20345459pgl.31.2019.05.29.07.52.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 07:52:13 -0700 (PDT)
Date: Wed, 29 May 2019 23:52:10 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Akinobu Mita <akinobu.mita@gmail.com>
Subject: Re: [PATCH 2/2] nvme: enable to inject errors into admin commands
Message-ID: <20190529145209.GB28274@minwooim-desktop>
References: <1559063018-3682-1-git-send-email-akinobu.mita@gmail.com>
 <1559063018-3682-3-git-send-email-akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559063018-3682-3-git-send-email-akinobu.mita@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_075215_546281_CAE5854F 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Sagi Grimberg <sagi@grimberg.me>, Thomas Tai <thomas.tai@oracle.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-05-29 02:03:38, Akinobu Mita wrote:
> This enables to inject errors into the commands submitted to the admin
> queue.
> 
> It is useful to test error handling in the controller initialization.
> 
> 	# echo 100 > /sys/kernel/debug/nvme0/fault_inject/probability
> 	# echo 1 > /sys/kernel/debug/nvme0/fault_inject/times
> 	# echo 10 > /sys/kernel/debug/nvme0/fault_inject/space
> 	# nvme reset /dev/nvme0
> 	# dmesg
> 	...
> 	nvme nvme0: Could not set queue count (16385)
> 	nvme nvme0: IO queues not created
> 
> Cc: Thomas Tai <thomas.tai@oracle.com>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---
>  drivers/nvme/host/core.c         |  3 +++
>  drivers/nvme/host/fault_inject.c |  5 ++---
>  drivers/nvme/host/nvme.h         | 20 +++++++++++---------
>  3 files changed, 16 insertions(+), 12 deletions(-)

This looks good to me also.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
