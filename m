Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D536CF4B
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jul 2019 16:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xi7zS3E8X3UzoQWbDFvrbp8rqdjWw8f7iqFBZDFZJM=; b=jnaBq+OgdEJ34w
	6CaCntvLAhpY7c08qeLmnnVSOmpgoP/nvlEJyGsq5+SBqw+E2MP8CRR67TpCFjSTrqncY2w50BMAh
	GXbFd+U8qVwqFX8NIMHm/EKzaq+I3pL5xWpTugpODbLPmM587Y2YyZI+p75STSVBxm7dGqdVW7T99
	u8+veBjrzGOWm1l1cVbtg1F6ZGMhqUOr7Kg4Rewy9ksZx1zlXiI6Unjr/R0k//25Xns5hfZ1RiU6y
	QqPRDBs8Lorl7Pm3I6eDt3Nj5byd3AXOIAbjDflwBAya7CrpQMbFj7CdZPeTPXx+09fYx1iVXFyYC
	WKP/ZonY04wu0SUAIhYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho6wz-00086o-Fs; Thu, 18 Jul 2019 14:00:01 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6wQ-00082D-Px
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 13:59:34 +0000
Received: by mail-pl1-x641.google.com with SMTP id c2so13911544plz.13
 for <linux-nvme@lists.infradead.org>; Thu, 18 Jul 2019 06:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NUBO4YCRDgiN4UTvulVlnqUREX1vo2A5l3XRIoGqGME=;
 b=HB2wxzPrDEbYvHZRxbCo9QRYUEqFFdl/rLdSPDNQYHaEXWjZkxMi5D3ZDvSHU+GimH
 SjcBOAyXrOFaRY0/xrjsItgWCiNyLkHR22zMFkHeN5NIyS9rLfXrSGDxiRtB3m76QUSe
 /zMrEvjf8vwCUkix56WOcpeoCu3cMSS8jTI5uDV9f7v2E+6pf01BfrasSPbmS1t2lb0d
 jIylXQGdbBV6wsnHLlR0FIX4ZevsifJ+0fXpE9MeaNqosdEUDzHJZmINobNAcB5l20d8
 C+arXOCsEGPjD+C3b/NqjC0jhOHPsaVVIwQx0NzkHOVSIdU5STuQzJ1UChfJRB7Mhe9y
 dbyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=NUBO4YCRDgiN4UTvulVlnqUREX1vo2A5l3XRIoGqGME=;
 b=pQ2DbiA8h4whV3cTXIHE5SD9Pbx8ydiBbtDT8EXkTXa17Oa5Jn664ZKUsNfmgR618R
 u5YUYEH3VuvkytQGgYB/d9Mlz8GOgDR+QuBY9jlLadrzyBthuL4FNPmDsyQ29iz3Gmzs
 SUK0hY5MSYts6Fo7wMIu0O/v7s0MxV6RI/6RnOW302LAIE+7d3kXz2BJfiLMzIyVlpK9
 YrVhiiklMFwRztchWb8+8QmTKtLvBR7OUWLuyIL++smYpzOJUWDoz2pf+UoOReu/4oDL
 Qbw5cUtmPTYdxncbjOq12/kMRRMhqbm1GBgKvRcir/bheX0PGBCzy4Vurbu3Ez7X5Cr1
 ZVWA==
X-Gm-Message-State: APjAAAUqwjjsoT/mx9Pi8sHxl1fb/57nCsXE1vLiQljV/gZet7FnInVs
 /S2dD73z0tX3XqmB6Kzs6t4=
X-Google-Smtp-Source: APXvYqx173fSB7lx9dKAPXlsiipxa5JyR/hpYuhUgImVW+wGnZmLIzDlKvpQwh4ZL+yVrTeDqFz9yg==
X-Received: by 2002:a17:902:5c3:: with SMTP id
 f61mr46783088plf.98.1563458359244; 
 Thu, 18 Jul 2019 06:59:19 -0700 (PDT)
Received: from localhost ([2620:10d:c091:500::3:ef9b])
 by smtp.gmail.com with ESMTPSA id e11sm33141264pfm.35.2019.07.18.06.59.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 06:59:18 -0700 (PDT)
Date: Thu, 18 Jul 2019 06:59:16 -0700
From: Tejun Heo <tj@kernel.org>
To: axboe@kernel.dk, hch@lst.de, bvanassche@acm.org, keith.busch@intel.com,
 minwoo.im.dev@gmail.com, linux-block@vger.kernel.org,
 cgroups@vger.kernel.org, linux-nvme@lists.infradead.org
Subject: Re: [PATCH v3 1/5] block: add weighted round robin for blkcgroup
Message-ID: <20190718135916.GC696309@devbig004.ftw2.facebook.com>
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <1333161d2c64dbe93f9dcd0814ffaf6d00216d58.1561385989.git.zhangweiping@didiglobal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1333161d2c64dbe93f9dcd0814ffaf6d00216d58.1561385989.git.zhangweiping@didiglobal.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_065927_664245_8222CA34 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (htejun[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hello, Weiping.

On Mon, Jun 24, 2019 at 10:28:51PM +0800, Weiping Zhang wrote:
> +static const char *blk_wrr_name[BLK_WRR_COUNT] = {
> +	[BLK_WRR_NONE]		= "none",
> +	[BLK_WRR_LOW]		= "low",
> +	[BLK_WRR_MEDIUM]	= "medium",
> +	[BLK_WRR_HIGH]		= "high",
> +	[BLK_WRR_URGENT]	= "urgent",
> +};

cgroup controllers must be fully hierarchical which the proposed
implementation isn't.  While it can be made hierarchical, there's only
so much one can do if there are only five priority levels.

Can you please take a look at the following?

  http://lkml.kernel.org/r/20190710205128.1316483-1-tj@kernel.org

In comparison, I'm having a bit of hard time seeing the benefits of
this approach.  In addition to the finite level limitation, the actual
WRR behavior would be device dependent and what each level means is
likely to fluctuate depending on the workload and device model.

I wonder whether WRR is something more valuable to help internal queue
management rather than being exposed to userspace directly.

Thanks.

-- 
tejun

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
