Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E469A1548B
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 21:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClNwVAO7+x8vjhO0SZ4bv/HbpqoTypDoidRRBqu4X0s=; b=DP4ODbHDdctFRf
	XFscgHP6hzOeMk0PC/VAP4QwDOMxqbJxu1I8DT2sS73PuxklzpxQcz4GiOcgRsDkA2SyT53gHMR/H
	m04d3fp0kGzuAaKhmYJrWaTb54H2OoalX19nUyp9IbipNOY1dQdUX0RFx0e/4o7VUJ9b9xwc/OAQ6
	fsypDQswbGQMLQ3U4ODEtez+0Ke4kUWQYAcDJCVY/YRX0W39Hqv0h5Y0cDQPT7+nzngxskRqkEQoh
	/6559vV7k43/aOHWC7OOYyBo3ZDul6nu+Lu4zt9HjwxNU8WW3dogqlizGT4EPNFYzfz6pA3w3zEwr
	fsHyDIm9OZZrOtP3ljzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNjVg-0004g2-0g; Mon, 06 May 2019 19:42:48 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNjVa-0004fh-7u
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 19:42:43 +0000
Received: by mail-pg1-x544.google.com with SMTP id h17so995365pgv.0
 for <linux-nvme@lists.infradead.org>; Mon, 06 May 2019 12:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=osandov-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yFCnQiGZ3Rv5q9D/GMPQsB9QhpcHsTWXAJRt474rTFc=;
 b=hQz56nPyhNZWboLLGIDnGmrDAFrOxxMZNBUwim2giwa2jWRVAhncjkPyYfQJLkMbF5
 j1Ts2/RDddhxclNyV3IvuCIttvnLhT3/odL8BFwc5Tk7EkmAgPJ9EtWgriOMCMq9Pjxm
 Y3J8w0K+xvEGK6xdb5JT3Wru5MUwCKa6lyY1GWanaV5X4bJZiRHbWt0MiV/ydbiaRFE5
 Ti3CgDYEccjJ83ya1OcCxONlbr2o4O+DXCypmB+giccmbSf1j7R617EKF277Kv2InzMr
 7qw+Y2OJXxDPf10V0mQZbve0FqHde+cTDRG8GaTJmMgpG8jRrz7ImKozIVzUII5A8Y54
 ILlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yFCnQiGZ3Rv5q9D/GMPQsB9QhpcHsTWXAJRt474rTFc=;
 b=gnEjUOiSJUBS2RQphvTWinIJjIGEqmJf+eh8WHN0sGMso6Ex+2ot3DhGJdXbj0rplS
 y8PH3mSdt+LeDxX4r4U9q57vyfQ/LBBHj9cfbawoqQPIjUsK0ZDEUkhsqzqhBp1vFIBo
 F9tChme9SfyJaM77OQx9WxUTZGBi1eyhSTMPtnyw8mMeTII6oJkh0D7BR4a6RhuV47rW
 aZKsnaf6N0WTzV1oTewn5ynQM1RvhMFnDvpXDkzJQpVbDP98vGLH/7a1wvyck1UpmWTu
 MPAedsRDPr6LPrjdVqRYZq6SD9tDVGMHHewvRGAisRMbud05viU8wLb/E1CQ0qRsnz14
 440Q==
X-Gm-Message-State: APjAAAWSLHNrxC09nERb1vk+NGVM2AAhGG8R3+pSrUPQQ3RopoOeS7s1
 nebEi0L8+xv1AHBEJtaJCZez/JJzsp4=
X-Google-Smtp-Source: APXvYqzVbWV+ibaFwHGXs3GK9oNt+7VaoP0kW5tSU0KkXQRuqNgcxSkBs5yDL63n4UQMxhBcUVgBkg==
X-Received: by 2002:a62:160b:: with SMTP id 11mr35436965pfw.88.1557171760499; 
 Mon, 06 May 2019 12:42:40 -0700 (PDT)
Received: from vader ([2620:10d:c090:200::2:cf4])
 by smtp.gmail.com with ESMTPSA id a129sm14139147pfa.152.2019.05.06.12.42.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 06 May 2019 12:42:39 -0700 (PDT)
Date: Mon, 6 May 2019 12:42:39 -0700
From: Omar Sandoval <osandov@osandov.com>
To: Jon Derrick <jonathan.derrick@intel.com>
Subject: Re: [PATCH] blktests: Use old variable check for Bash <4.2
Message-ID: <20190506194239.GB20450@vader>
References: <1556908108-16475-1-git-send-email-jonathan.derrick@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556908108-16475-1-git-send-email-jonathan.derrick@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_124242_335046_BEECF8D2 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 12:28:28PM -0600, Jon Derrick wrote:
> Bash 4.2 and above supports -v variable checks, which returns true for
> set or null. Instead use an older bashism that is compatible with bash
> 4.1 and earlier but only returns true if the variable is set non-null.
> This inherently adds a sanity check in case of null variables.

Bart previous sent a patch for supporting bash 4.1, and according to
him, there were some further changes required:

https://github.com/osandov/blktests/pull/42

Either Bart's list of missing features was too big, or this patch isn't
enough to support 4.1. If it's the latter, then this is a no-go, because
Bart's change was too intrusive to be worth the hassle. If it's the
former, then this change isn't quite as bad, but I'm still not excited
about supporting a 10 year old version of Bash.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
