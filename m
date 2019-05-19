Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F2B22878
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 21:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6RCojrCKqYf4OhzABSeX408PAkEy2wi0/MJkRoNZNc=; b=XZpdB7yQiV2Sol
	+hNVluMIsEeFPu3YZuWaQdY1Un49OsulzMx9GThxzxdstfi5vyVA0fi2Y5GFFsfQelKqz1OXfaU2j
	w5pK8CpH8w9JbiLouSSti4oG71gW36rU/Q7fQjrdnP6/eP07hvTNi763S6yYQxvbAmDoRia8M0Jgl
	SmlOmCSsOwq9DPKFoQS7XIhyAFi9oOWp/FlmXCCYbhigpx6Ftpi9gB1rrGnGaGnF3AlGz859wzO7J
	Y61rxWjR/CpOE1Ki6Qou+DRMKDbdPtVoJV2AN+f3sXFsF03i56+aRpp0JzEXnF3IB0JQVMLor+NiW
	pjXylqXq8b8f4dO+Vx5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSR63-0001w3-BR; Sun, 19 May 2019 19:03:47 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSR5y-0001vl-8V
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 19:03:43 +0000
Received: by mail-pg1-x541.google.com with SMTP id i21so5668818pgi.12
 for <linux-nvme@lists.infradead.org>; Sun, 19 May 2019 12:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hTHrOeVC9Hdrk/1o2Im+emYbkMcLUJ7+5d92zLnSp2w=;
 b=vLgbjRCGtuxMEvsLQ+euspiXT5/aiLpqjECMQ2So//YP55QutN77kAJT4vHG/+5/fy
 fzcVcxas59f3XsUMSBBPvgQ2kFm6SssC0x8woBJiWV7Y8kX4vrBxLiI+YeJwdHEelxGR
 e4XHGESDHe9RL2+BZXkfqGtgV1gq1abZzX9LLbMlmZTHAUWZdazNW+0Vg9nO7bO02cu0
 yiOnmzRur0qhESf2d2vlfdtSGro92/V+bUcX6/2knIkAMTe3UOrS5MGZ+fJ9wM1gR1rZ
 pdXR/TTyAglk4FnzO09SQ/xBADHJimMHRFLf1d7iNjbOXzZ/UEjbBsRuzzsm2YVZaxbZ
 zonw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hTHrOeVC9Hdrk/1o2Im+emYbkMcLUJ7+5d92zLnSp2w=;
 b=sKyI4F3V9mR+4g5Kr+7qkGxQanPWqpemw6uX4SK0+qNmPcBvKdYbE8aUJW2PDktOAw
 lpvCcm/HUfakWos3c5dU9z8sYufv9XlrBbtl7d6ti7t6iuTobcHmdGjmTx6ua6BATx79
 S9AqBa6rQdO8z55pulaQUNhJJ5xPaMlx6o1lwvM+MjrmmG2oOwjcflefMhnmFESPC2vZ
 xpM6tDYeiWy6NuEOq/lIORg04Op9g1IVKmJKaJA6grmMJNdDQYdAtBxfs/6VGX5QNUWK
 xsMXUWV9LmHRs4eowJTWy26vhdfhjv9bMUGdEu+AF+IlFnB7zQRNIcsGShsEUSO3D3cQ
 UhBQ==
X-Gm-Message-State: APjAAAWyYBz9wRj9IKKm0MILX0ODL+1lzUhMdt9PKAnj8cGxcZBnlVaH
 rO71oXvMyipsxTvmsixKWRY=
X-Google-Smtp-Source: APXvYqxuBHOh4oLKBdLxIPCodTNgf/pFYMwKnMXjPrqS+iQ9PugYUoILlzl6Yeu8sSU5XEp9r49qIQ==
X-Received: by 2002:a63:4ce:: with SMTP id 197mr71321862pge.309.1558292621362; 
 Sun, 19 May 2019 12:03:41 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id c127sm25090348pfb.107.2019.05.19.12.03.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 19 May 2019 12:03:40 -0700 (PDT)
Date: Mon, 20 May 2019 04:03:38 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH V2 3/4] nvme: Return errno mapped for nvme error status
Message-ID: <20190519190336.GD10876@minwooim-desktop>
References: <20190513170342.9497-1-minwoo.im.dev@gmail.com>
 <20190513170342.9497-4-minwoo.im.dev@gmail.com>
 <BYAPR04MB574936E1FDF464243691513286050@BYAPR04MB5749.namprd04.prod.outlook.com>
 <20190519175315.GA10876@minwooim-desktop>
 <BYAPR04MB574905F74B2AC5E18BB39B0C86050@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB574905F74B2AC5E18BB39B0C86050@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_120342_303975_A4E5E7FD 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> Printing NVMe status with err by retaining existing behavior.
> 
> Since existing code might have assumption of err holding the nvme 
> status. Also since we are changing the return code functionality so
> it shouldn't affect the rest of the code pattern.

Thanks for the review.  Please review V3 that has been updated.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
