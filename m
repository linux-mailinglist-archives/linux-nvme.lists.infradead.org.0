Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CADD067E42
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 10:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=68FG6OxJ+6+DWEWZvpnJ+nGNOLoAXTrATc688lB0FpY=; b=OiRCpts2LkXzHP
	leZuyOyNXOZ8F1tKnSCcZtKNGE7GEXhjS8TGxcSAtyUTpmVMU9XXlAG3PpIThsQUKlUkqFiNFD1Ql
	+MTh3E77T07XjLELPM2lxYkD4Ar80TwgDwprVN+AJsDnrP7X9hH60DBkhevpsndhnnevFQmBKnehl
	isD8TY0fzdVsfLsd0ezprURRkJMP/CvcNrgWywaG32E/IQ1k/+fUMGaZrWxWeZjh1N5OZ5KINhTFF
	VvLlaeGE2/dJsnYkctYU7oqrwot5qXghGIgOnQty3LBgA0r9XPY0ZvhYoRbyyo8HOUCAFeZlBCURB
	dYiIekRD1fdkdAgWt8ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmZZl-0002XF-DC; Sun, 14 Jul 2019 08:09:41 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmZZb-0002Wv-GB
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 08:09:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id y15so6077076pfn.5
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 01:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Cl6NwiN+qFcTG8P7Oa+6s9yUPSIgkM4mT70CWvMC5MQ=;
 b=QsL/IL1J4zYM7RBUgpxhm7oiQ9/5mrhKGzP2XQHD7HbjfC6d2ymCtI3GkyUi5LoJlZ
 qiVakPoXP/YmKZhZIKpGS+r/VBNCuw+xJh8qffJos8q55Q1wXiyFM/WZp8vj8wrq3SR3
 ltuRsjMOIOyeD1lllJeGkyrpsc6zeFx3qwaxAiZA8k+j/hKqzYSZzM9XYAz8eXZgeRC5
 XbgFa0hlQxUlLafIV3oPSUvYtMjbt9CNAW16NLdgOlhLweLfYpt4avZWu62uALimVrFz
 L29drpFnI/gtsAXMj7UZtkkVzUTrLyFVnUyFlA0UElNxlOuzQ5ouqmaQeQuTahE50f5Z
 qBPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Cl6NwiN+qFcTG8P7Oa+6s9yUPSIgkM4mT70CWvMC5MQ=;
 b=mCannGHKpWjK0dV8JicbUQ6sJk0ir5EbjzJNyukSkSgdJfvvQIG4L4bHkdcg7VQfIi
 z0sFjKR6tUmqEPFY159dw82hy7fFGLFBuG+yt+cbYDkEkE9mSsfzb+6OO1yE35XUGbGA
 bvj6xMGFcVYob4A2QF6aZ1H0OLRpmPWgUPPRZ3l2VK7q49STO1VZwEArmFh7pGDozdYC
 eNZUIeqqVJL6QbdT/AAUGzdWPEn47/Y5p3NGbLrvpaCoZYmPOt7Pub5TduKkPqf7EGmT
 SIr86o07bJDLQyvE6G23W8jMo32xybEp3Fxxtg8s3iyZl0qljYstosRbTIdtsV6itol2
 eJbg==
X-Gm-Message-State: APjAAAUZPWwCghNUDUlRtOI17ABY86knYj9YEnOSDk4Db14DpbBTsgUf
 VaSebGcP8FoFJPFuAH8LUO8=
X-Google-Smtp-Source: APXvYqx7qMm3lYgDNDtft+RC6Qu4rch/8wP7Oh3FnlifPWlxcRe5sAkXwf4O2f16ZRuP+ytVwyQD2g==
X-Received: by 2002:a63:1a03:: with SMTP id a3mr19497108pga.397.1563091771072; 
 Sun, 14 Jul 2019 01:09:31 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id p65sm14086183pfp.58.2019.07.14.01.09.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jul 2019 01:09:30 -0700 (PDT)
Date: Sun, 14 Jul 2019 17:09:28 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 2/3] nvme: enable aen also for discovery controllers
Message-ID: <20190714080928.GC2993@minwoo-desktop>
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-3-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712180211.26333-3-sagi@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_010931_533387_CB635B1F 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-12 11:02:10, Sagi Grimberg wrote:
> If the controller supports discovery log page change events,
> we want to enable it on the host side as well.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
