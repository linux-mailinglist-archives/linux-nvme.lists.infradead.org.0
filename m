Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0632651BF1
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 22:05:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uGFRWkBXP284JQuTA8rOf2nl9Wgy3jo/HguAR+Ig84=; b=Aqpior9uxFOFl9
	n0x8TWJCMU5QYx4CHL4ltVCxDhoN32DJAnoHXLP0lFzzEmrNFFRV925YqT7OwJ+A1RmYclCzYSAM/
	s1jTgPm1HivB7GT3+njzCW9qFDBVR40/1G+wlidVNbi8oN1kmX0ktXnCIUnIZdAqCveDzPAKV7r42
	wanATjhxrHJIhfA6V9yZHgW80RtrU6AlpkMn3T88e/dTHmn4B8UeflLo6oG1YLVgSt6WcOMD+5EbB
	dpUgnf9FsooYq5FANDPXhWoC4Hqt+FQEQQLipmJecF73NMOzhx1tuqva2UGgIuDrcqBG67eYYNZ/w
	4xsL/cysZEAVyjiVZrOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVCz-0003if-Fo; Mon, 24 Jun 2019 20:04:57 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVCr-0003gj-G1
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 20:04:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id i2so7502152plt.1
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 13:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Dk2R3X3mXgvjmuQPVyOAVKaP4L33xF9EDrVfT2sQbNI=;
 b=UF92zJ7xG3gXZJovCYVf6Neju1c/kxLbJj7Ukdnhy/ugZ8KG18znDom6c+Np6xvx1t
 +VgPUVcG5sVGT3Cqme0AZHXiDtl+0SeRMHW8mlJDjrOy9WinZRMnD2BLpb9jSCcRvg7W
 KbMtm4AK3Irwp/TcWD6ckBLrfkvNuLHExILnGvyCGEExP/60BkQJVHzun/UYpsHsiEg6
 tYPuV1QWEmYOEEKYIvx17nZb0vmO0oqVFi39+iDaGWfLpElkmNsXKasobNdfe68ZdYZs
 BiwH66njh+RURv4f9f89bJ83eyrVRkyyw49K0kh8iG5opqMBaMQ9LcVG2NSvMUyYBkxv
 AhGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Dk2R3X3mXgvjmuQPVyOAVKaP4L33xF9EDrVfT2sQbNI=;
 b=PhMaQhskUvVnyWTnJFz28acDFLgG8V3Mzmx1rfe03F5XU1F+GONNGT/y9Kt9tVTtnu
 XcMS8LtDAKXbckDsgGl0e01n3Z2/qBqKVBxxfaCLBpRoYwlcXNAGeHJmIjwkGm9YrS9r
 WAiOQ0ansj8wAypYTIHV0RW3FHelhenwi12tN976kZQZTJOVE/xGA9GKPI2lNMwvtBs/
 GmWrN42J0r1RPBf3iP1Qs5emcF0LenAkXeDYGTejFAWnP40kmbNtf1sHi33Hz8I9AY99
 K2Knb7nu1SUfk07DJrX/67YQHAajEA51EtAKFQUT7XIcrmmmhCa5MRRUKxtvgg71GgUt
 JPXg==
X-Gm-Message-State: APjAAAUudxut71MMQFimw079Wir8xwJaJMdgn4uUYp2UDKz82vvKGcvr
 laqDKBbK7vNVb9IbYw5JGYY=
X-Google-Smtp-Source: APXvYqzxuRK2hyiqUt/pzhH0h+MxxhDFe6KzPYHBGUzbDSddM2Mg9/iAlq1QP7VTcyjJ87h3b0S8cg==
X-Received: by 2002:a17:902:e211:: with SMTP id
 ce17mr68110616plb.193.1561406688219; 
 Mon, 24 Jun 2019 13:04:48 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id x14sm14338992pfq.158.2019.06.24.13.04.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 13:04:47 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:04:45 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Weiping Zhang <zhangweiping@didiglobal.com>
Subject: Re: [PATCH v3 3/5] nvme-pci: rename module parameter write_queues to
 read_queues
Message-ID: <20190624200445.GB6526@minwooim-desktop>
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <d61b1b9a31c3d2fae9ece26bcd5f4504b25f059f.1561385989.git.zhangweiping@didiglobal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d61b1b9a31c3d2fae9ece26bcd5f4504b25f059f.1561385989.git.zhangweiping@didiglobal.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_130449_591910_C233420B 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: axboe@kernel.dk, linux-block@vger.kernel.org, bvanassche@acm.org,
 linux-nvme@lists.infradead.org, keith.busch@intel.com, minwoo.im.dev@gmail.com,
 tj@kernel.org, cgroups@vger.kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-24 22:29:19, Weiping Zhang wrote:
> Now nvme support three type hardware queues, read, poll and default,
> this patch rename write_queues to read_queues to set the number of
> read queues more explicitly. This patch alos is prepared for nvme
> support WRR(weighted round robin) that we can get the number of
> each queue type easily.
> 
> Signed-off-by: Weiping Zhang <zhangweiping@didiglobal.com>

Hello, Weiping.

Thanks for making this patch as a separated one.  Actually I'd like to
hear about if the origin purpose of this param can be changed or not.

I can see a log from Jens when it gets added her:
  Commit 3b6592f70ad7("nvme: utilize two queue maps, one for reads and
                       one for writes")
  It says:
  """
  NVMe does round-robin between queues by default, which means that
  sharing a queue map for both reads and writes can be problematic
  in terms of read servicing. It's much easier to flood the queue
  with writes and reduce the read servicing.
  """

So, I'd like to hear what other people think about this patch :)

Thanks,

> ---
>  drivers/nvme/host/pci.c | 22 ++++++++++------------
>  1 file changed, 10 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 5d84241f0214..a3c9bb72d90e 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -68,10 +68,10 @@ static int io_queue_depth = 1024;
>  module_param_cb(io_queue_depth, &io_queue_depth_ops, &io_queue_depth, 0644);
>  MODULE_PARM_DESC(io_queue_depth, "set io queue depth, should >= 2");
>  
> -static int write_queues;
> -module_param(write_queues, int, 0644);
> -MODULE_PARM_DESC(write_queues,
> -	"Number of queues to use for writes. If not set, reads and writes "
> +static int read_queues;
> +module_param(read_queues, int, 0644);
> +MODULE_PARM_DESC(read_queues,
> +	"Number of queues to use for reads. If not set, reads and writes "
>  	"will share a queue set.");
>  
>  static int poll_queues;
> @@ -211,7 +211,7 @@ struct nvme_iod {
>  
>  static unsigned int max_io_queues(void)
>  {
> -	return num_possible_cpus() + write_queues + poll_queues;
> +	return num_possible_cpus() + read_queues + poll_queues;
>  }
>  
>  static unsigned int max_queue_count(void)
> @@ -2021,18 +2021,16 @@ static void nvme_calc_irq_sets(struct irq_affinity *affd, unsigned int nrirqs)
>  	 * If only one interrupt is available or 'write_queue' == 0, combine
>  	 * write and read queues.
>  	 *
> -	 * If 'write_queues' > 0, ensure it leaves room for at least one read
> +	 * If 'read_queues' > 0, ensure it leaves room for at least one write
>  	 * queue.
>  	 */
> -	if (!nrirqs) {
> +	if (!nrirqs || nrirqs == 1) {
>  		nrirqs = 1;
>  		nr_read_queues = 0;
> -	} else if (nrirqs == 1 || !write_queues) {
> -		nr_read_queues = 0;
> -	} else if (write_queues >= nrirqs) {
> -		nr_read_queues = 1;
> +	} else if (read_queues >= nrirqs) {
> +		nr_read_queues = nrirqs - 1;
>  	} else {
> -		nr_read_queues = nrirqs - write_queues;
> +		nr_read_queues = read_queues;
>  	}
>  
>  	dev->io_queues[HCTX_TYPE_DEFAULT] = nrirqs - nr_read_queues;
> -- 
> 2.14.1
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
