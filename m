Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD25451C44
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 22:26:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VlzGBjnDobEz1zCf6VbE6kOEB/ZoRitZBw7aov1BT+E=; b=BLpVTepkQFAFaS
	gvVVsLYBLFADtpGyrujYJobU+AQ1JgVK7+HswyBVcXsDzOCa2EDofmimUGslhHXe1XdTp1AQKrmnT
	wkjb9opquI7SdjD36+kCsLlNTHUjMmg848gPMKJ6acMvmZVUiE7O83ZYAJPm3rhFAp0gOEgPLEXUi
	5Osw4hw/ZtX9JI0MZWrAiyw7N7MB4THh+aMV/n4d+Pvnb29csK/U6GXAZFdcZvBP+HKhXVzDO1r9v
	Pgk9PlnVpMXEilr0pxPsbRIidb/sDZKSEIfQdJIKHrmip2uzO8txX3ZyFKV+ZyT8cXA35h5cTRoOk
	X/CNcXHODS7tpui8+LSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVXU-0005NL-2h; Mon, 24 Jun 2019 20:26:08 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVXN-0005Mz-30
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 20:26:02 +0000
Received: by mail-pl1-x642.google.com with SMTP id e5so7516605pls.13
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 13:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6pLaaiZ1mPQUewloYg+pN5Ez3zRBpU86Cu11UBdtbVo=;
 b=KsIvLb8UYLsfz3jQxcMuHxsQx2m2z+kH8kjMasiaWgrsQ1VuwurSAtK+C1q7AiQzhr
 1UvzWTvaI1eKoXvKNzpvI+Jk9wtoOr2z2XS9V445YYDVjtnu1jjQd2N9Y9DSW01ay4kN
 DCsD8YJ0w12eyi3FHs47ccogUhf2bu9ShDnzkuwpVI56QAofwwewU2Lbaft5ACoiuA3m
 nEpS6cDkUphE6nQsSjERO/FQYUp4H5k7w1kfrk+ZUZ3ZKmwuPbOJz+YBsGLstA+BDG2u
 xFJfXi//PKfdaLrR1WShzmWDfbB0ftj/CnJbpSmQfJFcvNvrNxe4H+61zsBcLKW8mpnG
 2GQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6pLaaiZ1mPQUewloYg+pN5Ez3zRBpU86Cu11UBdtbVo=;
 b=nhT8Dcm60VO+Gr2voTkmQF34OpuGS+ezlMmnEOG40Ni/FxZz1BFWhUzqN/4Qyz2sJc
 2E89TOOzUUBKuqAIi0AIhHKN6ulAfGm/NT9bQ3Z2MbOW0xYlRc3xCDUt5VVAJTvN46c7
 6xN8JDqaEmEB0eyqHVXqVrr1tXuBc3psKTMl81gKOkIkVU2m57IKFwTIClJmha60uWDq
 vgprxfKbLWXkCpSJgALJ1LZIPzWpK6DjMBnKfwBtSWY7cOw/YOLsJJxJO88HeG05L/n9
 fkusdJ/5wObBWi6RYJqscaLoP9I4wnMd6l5Gs5YAF7wbPwZyjlIIMCtX0O5bM2Nr+f2H
 8+sA==
X-Gm-Message-State: APjAAAXM6hP5k74OSExi4ELb5q3yxJRk2ee0yKq+/jhYlyPnTJPi8A47
 eiJYn63kPRKhcR2s231YB4g=
X-Google-Smtp-Source: APXvYqyJu9hyZYX+v0WhCVWtmRqh0V9sWyFpT+5ZAMOBp00eRgVZm+6Ao8LkFmb1QEbmQInnufvd9Q==
X-Received: by 2002:a17:902:522:: with SMTP id
 31mr141875367plf.296.1561407960629; 
 Mon, 24 Jun 2019 13:26:00 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id r188sm8088823pfr.16.2019.06.24.13.25.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 13:25:59 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:25:57 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH nvme-cli 2/3] nvme-cli: Restore RHEL 7 compatibility
Message-ID: <20190624202557.GF6526@minwooim-desktop>
References: <20190624200521.28191-1-bvanassche@acm.org>
 <20190624200521.28191-3-bvanassche@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624200521.28191-3-bvanassche@acm.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_132601_130218_F51021ED 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>,
 Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-24 13:05:20, Bart Van Assche wrote:
> With glibc version 2.24 and before the endianness conversion macros
> return a value with an incorrect type. Avoid that this causes the
> nvme-cli build to fail on e.g. RHEL 7. A side effect of this patch
> is that it allows sparse to verify the type of the endianness
> conversion functions.
> 
> See also https://sourceware.org/bugzilla/show_bug.cgi?id=16458
> 
> Cc: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
> Cc: Minwoo Im <minwoo.im.dev@gmail.com>
> Reported-by: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
> Fixes: e68409e447b2 ("Remove superfluous casts")
> Signed-off-by: Bart Van Assche <bvanassche@acm.org>

Not only for REHL 7, Ubuntu 16.04 which is my VM has had same issue :)

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

Also for the build:

Tested-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
