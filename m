Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC39AEB672
	for <lists+linux-nvme@lfdr.de>; Thu, 31 Oct 2019 18:54:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vMh0148hZM2NuaC216KiMEakK9Pp/09OwMVxcsE+SM=; b=UVqftwxsgwyjsw
	3PgvfQPdZWxkx6dlE3OIvlZ8ov+0/j4p/8ER+MmqaIeszaZDHbCWVgRvVExJzPtWRJvV30dEkeD6G
	BeQ6P2VaCrI2CCF2ucC7Jr5YAeT6NjNdwjttI7w1PlQsstDXZN7Df3Q3Fy6dcz62DkPRqxK4x9WQ0
	guds6OucCCz4SwcPRmNQ3rJmwHBtCpDC+8r8sn9nscFzG+ESkBis9JVACf1CUxhRbwD95lKWptwG5
	2RuCPCISqNwa71wa/twNPCdx3m4c5ehTiIgD6hvMKmMbdbqK5OiHa1Zb3rn0pVoMqiksW5l+X0CbO
	Y0/FG1mjc98IQj2KI57A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQEeY-00060f-9n; Thu, 31 Oct 2019 17:54:34 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQEeT-00060H-Sq
 for linux-nvme@lists.infradead.org; Thu, 31 Oct 2019 17:54:31 +0000
Received: by mail-pf1-x443.google.com with SMTP id c13so4864790pfp.5
 for <linux-nvme@lists.infradead.org>; Thu, 31 Oct 2019 10:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kz/FCtj2PF4gxBdcIEXsfbI3RO9QLhbBmTNUon1wjBw=;
 b=EST86sBDiClx5CY1TbLmQF3b5slqCpp8BgmFv4VLc7H8M+gWS4n0FyV7tJl/SNCedP
 x+RIjeA/vG/S844grBTtcbmvcnGfRwRgmdoeUSOCuvmE+08qpPH2Uew7FU/IbFCTaNXV
 NpOGNwzYATmj3M6w2DDZ86mwPurmvgfdrfNEb96YHl6L+leWAc3qLdpRuuod4c22wjbZ
 dbUTVnX4+UJkxWXqRXIFlGytjAhwWnqjf5mYXYr11Z9rB+b6yF1fgfpPI7azzX29zQ1x
 SwZE+rDreClmrLI3TroX6/PZGpkboSq9KsDv1ati/aajpk7JNZBDXS2U5Ed8zkFTM/Kz
 dc/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=kz/FCtj2PF4gxBdcIEXsfbI3RO9QLhbBmTNUon1wjBw=;
 b=cYTTN/gegB7Ujpq+Nb8TIZ57NtnfUrdyQx+I5mekNxaN7TGN7jFFW7C7RpOSj2h9A/
 vB4ajlbXmBsTKcqxmWWffW4V3R49JPslJ6aabg6fwiJqD9bFv4dNH2gprqCqiP3AxQHD
 it2mKGcfJX6yQVyTtr18Jl39AOnkvcIXMpNv3GEpO4YtuXUA5H2EmnZuhOext7uQJT2Z
 kVNy8WPMJ2CqLR9umbTeb5xddZ5xSLSjcv8UlrUHvAst9ZphnIg09xE4xYx3f+9Whd1D
 51KQ6degfusO7LEDKSsAIIu9tDg3FfUVJPzF7yTdhfYkDazihrYtS9XuwlLqbaVQdikI
 RQXg==
X-Gm-Message-State: APjAAAVRcya3hssNjqPk3rz1QM2yCxNxsBH9jR2Z3SStHWOngLXDlYiQ
 FrAA3FnHpLflwfdTtqY20UA=
X-Google-Smtp-Source: APXvYqzPEkkqE2XdSGKjYOFeXoi4DM/BqcfRzbuG+/8iiXNsBYnzSNslwun+1RAYM3et3ScThxGGzw==
X-Received: by 2002:a63:1a46:: with SMTP id a6mr7805345pgm.3.1572544467672;
 Thu, 31 Oct 2019 10:54:27 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id j7sm3523599pgl.38.2019.10.31.10.54.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 31 Oct 2019 10:54:26 -0700 (PDT)
Date: Thu, 31 Oct 2019 10:54:25 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v2] nvme: Add hardware monitoring support
Message-ID: <20191031175425.GA25602@roeck-us.net>
References: <20191029223214.18889-1-linux@roeck-us.net>
 <CAC5umyhc=6yULiLwXu65VDvDk2cBiF0R9O39B-T5ftapJfj0rQ@mail.gmail.com>
 <e62b6763-0d1b-3359-6d3b-cb31e96bb862@roeck-us.net>
 <20191031134549.GB4763@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031134549.GB4763@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_105429_932687_02009894 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 02:45:49PM +0100, Christoph Hellwig wrote:
> On Wed, Oct 30, 2019 at 07:20:37PM -0700, Guenter Roeck wrote:
> >> The nvme_init_identify() can be called multiple time in nvme ctrl's
> >> lifetime (e.g 'nvme reset /dev/nvme*' or suspend/resume paths), so
> >> should we need to prevent nvme_hwmon_init() from registering hwmon
> >> device more than twice?
> >>
> >> In the nvme thermal zone patchset[1], thernal zone is registered in
> >> nvme_init_identify and unregistered in nvme_stop_ctrl().
> >>
> >
> > Doesn't that mean that the initialization should happen in nvme_start_ctrl()
> > and not here ?
> 
> I think calling it from nvme_init_identify is fine, it just needs to
> be in the "if (!ctrl->identified)" section of that function.

Excellent, I'll do that. Thanks a lot for the hint!

Guenter

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
