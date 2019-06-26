Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B73FD57257
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 22:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7YhI1KcJo/eoneppGqUcXaX3YleopxEeqsk4I8i4fE=; b=cA1lV0qzKVGNqz
	AQA70A9JrcDVN2IXVeskLGgYlc6WZ+L4SMILt+h8N7o99Nue3hZVPmBcDBzf3ESWZCIC4JndEkmsQ
	E3uOR4a3Hyj9XbOs3J1g+Psm3+QGsBJvImZuxCW1GdUDMOGVUdS/d+6SqACALi61dlouyocXtMWJi
	VZf2DrJX3AxzwDBsWXIhyHgiYt1pRxpjyZ9S7Dur9hT0Tk19LkbpignuEO02n5Kli5JMJl/IaXYcE
	0A1wtufQhhD3s7MBiXKJraAibni+qvyIJA6gYryG4wsBnrvaHvWE/JIBzfxkZs8Wgyyv6WgeSpV6l
	s69iq+w3iYJNvmgaLdig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgEFx-00014O-EO; Wed, 26 Jun 2019 20:11:01 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgEFk-000135-Q6
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 20:10:50 +0000
Received: by mail-pg1-x541.google.com with SMTP id v9so1698801pgr.13
 for <linux-nvme@lists.infradead.org>; Wed, 26 Jun 2019 13:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fr7i/ENp7aGYYEF02skQlZfDr8p6MJ5Q3iZjfvmtRP4=;
 b=ksFc/o6T+8+Qstfi+VZY39IJmvUmwK0Cbp/zhCtIQ5URgsW1CXdEXIR0rWsZ/5NNJX
 iEJphcITi+swWG55ImBd2UMi5R1BL9NYQ+GaI/vDvUSfgSmKPmaHEXIGM5XCcVySc+m/
 louqizTFTFaWODzkwtsSSa5DXpjUMmwMcR3BgWhDchBghzB39Ynr6FymVJ79kDAntlW/
 Bk3dIu3+k+uf81+Whsa9Se9z97qlbwuMUo5AxORE7mO0KFDxWz1Z4fodVbDRnTGfFkKA
 4IxPTcHI1wI1BFjuiWcUFn2JNend7VniCds6894A7VbSLGNWZ6xkwhQm0HnwcouPhr4X
 lGMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fr7i/ENp7aGYYEF02skQlZfDr8p6MJ5Q3iZjfvmtRP4=;
 b=L3bF7aLMHvRJbw9ODCl8JTJRWk7REv5hP8oQ1YhnR6FM2Te2G2f8+++7pXSHZkKofG
 OeAhgARoXA1BEVQ4Wvrw9wXqMO7WzB7JUp1USirw1bFxlXIF0Fo0bYVNbxVpOV0Q8++q
 aiv9rz2d3YOwD/6f+yj9iXrMZNzaeNRM9AvdaUf5IinWV9uyw1dc25ycR1iHqQqZfjvN
 JWDUn2CTK5qzFtCgj7/rQA3Jreq2xp98jC2kLcyhAH7SlKL5KMsBH3dSrQJ68518V1/P
 RH90RAKaTFPJH9VS85B+2G/gi8HjqalXvn3lUHBzKcsAcFWdSXwwsY9/QTGTBHn940kt
 u67w==
X-Gm-Message-State: APjAAAX+u8HqA3QAUY8oKzqTiS+X1JuIUG/J2dMvrjaJUuGsKhqVj3xC
 SIqsUi2bhrnLiVlMdSJYoy8=
X-Google-Smtp-Source: APXvYqy+8INAblpkK4j8kdIICVT4WVXnbuGleyKIkOyO4NQmLhPWsTX94aJyxQR0X1SfCpecwrZ5qg==
X-Received: by 2002:a65:5144:: with SMTP id g4mr4658877pgq.116.1561579843302; 
 Wed, 26 Jun 2019 13:10:43 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id y12sm5054pgi.10.2019.06.26.13.10.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 13:10:42 -0700 (PDT)
Date: Thu, 27 Jun 2019 05:10:39 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] nvme-trace: fix spelling mistake "spcecific" ->
 "specific"
Message-ID: <20190626201039.GA4934@minwooim-desktop>
References: <20190626124323.5925-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626124323.5925-1-colin.king@canonical.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_131048_852623_1177C68C 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-26 13:43:23, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There are two spelling mistakes in trace_seq_printf messages, fix these.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/nvme/host/trace.c   | 2 +-
>  drivers/nvme/target/trace.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/host/trace.c
> index f01ad0fd60bb..6980ab827233 100644
> --- a/drivers/nvme/host/trace.c
> +++ b/drivers/nvme/host/trace.c
> @@ -178,7 +178,7 @@ static const char *nvme_trace_fabrics_common(struct trace_seq *p, u8 *spc)
>  {
>  	const char *ret = trace_seq_buffer_ptr(p);
>  
> -	trace_seq_printf(p, "spcecific=%*ph", 24, spc);
> +	trace_seq_printf(p, "specific=%*ph", 24, spc);
>  	trace_seq_putc(p, 0);
>  	return ret;
>  }
> diff --git a/drivers/nvme/target/trace.c b/drivers/nvme/target/trace.c
> index cdcdd14c6408..6af11d493271 100644
> --- a/drivers/nvme/target/trace.c
> +++ b/drivers/nvme/target/trace.c
> @@ -146,7 +146,7 @@ static const char *nvmet_trace_fabrics_common(struct trace_seq *p, u8 *spc)
>  {
>  	const char *ret = trace_seq_buffer_ptr(p);
>  
> -	trace_seq_printf(p, "spcecific=%*ph", 24, spc);
> +	trace_seq_printf(p, "specific=%*ph", 24, spc);
>  	trace_seq_putc(p, 0);
>  	return ret;
>  }
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme

*facepalm*..

Thanks for fixing this, Colin!

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
