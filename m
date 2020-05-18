Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0DE1D7FF5
	for <lists+linux-nvme@lfdr.de>; Mon, 18 May 2020 19:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQ4eRzYNxGO2cpWu77Gc6URAnuNxZvW/dNne99QZh9Q=; b=mX1uZmc1y5GBzO
	pEOC1seBSckZ2/O3j4uesQg2n6rsyv2nJXBQFJci9pEqyOMGH25599YoqytOPuo03yn4NCpH4T6wN
	jJi8ECvydpfMNeghHiEBdR3AdsSxwGSIEnIGilIe2ThK77VBXTfPDQ1xZnPjYim9RQ/WYd0rhmtcc
	BXHOadEkHslW4BXd49cUWMHSSeTWCFQqqWSUeegWmynmnn2Bq2TMUssJLOekxVSDxgI6Ln+ClAmmI
	bAi+Rw4Spr5jg/RP7guiaRRqtw9qIpGTsDXjt6smIDPpP2QA9WMV7ELKvbkZJmszu+A60rUyLREpv
	PW6eho2WwdLn2jwURdJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jajRS-0006Wz-On; Mon, 18 May 2020 17:20:42 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jajRM-0006WO-R5
 for linux-nvme@lists.infradead.org; Mon, 18 May 2020 17:20:38 +0000
Received: by mail-ed1-x544.google.com with SMTP id d24so1204119eds.11
 for <linux-nvme@lists.infradead.org>; Mon, 18 May 2020 10:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GgTcEd+caanrx1t1o1gL/Ypc50CeCw/F8i23bYyVrUw=;
 b=PuiVlzFghkrRKLS1pILHxv+676poFWDYeHwwBLU2TzTknD+dFYLk0xk+5TDy5pgW64
 qhuwEWP7J2W6vsJz9bxByoo2dcZ36iMpyHBw7XLV0g5MUF4S816ICg1DZOwDObAlCM3l
 jlS2qNoPNiw16Z9LbJPF9al5A655ElOJAWZCiLcMB/bVFyCP105iTKNVuysDuncWhyKd
 BhtMjOTMlylTNZO9ZnTXwTC3GcHLAoPHCQ+Rc0wCdFGDFSgZbzPR0IlAhtNd6yFRaXUC
 QFTeTJBaBJG91RBZss95qPo8+kfKyS7kah/YxohaMXsSe2dPgCxaCsSp+E0yeuj4kHg4
 cGjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GgTcEd+caanrx1t1o1gL/Ypc50CeCw/F8i23bYyVrUw=;
 b=MruS6jNbv0tL8Ba/SLA2+auC+VDYtammcDESq1fRfN4fNnuF9vy9HxiUtKHEwdOcFV
 9pFXr8+RAo9YguP8wGfemRV3rVI/NOlCCnw8nlnk0oY/SOJ4Ks4qUrM98iuu9vwaOiqi
 EufgJHHn9BNd5nSYFXgI/FBvKU8lAUN2UheBIwpQ+d2FYHApy5GrV/jlH08y5YHG1AJp
 j4JRTBHvnnt8vZM55vn2kLjl+L+DHrcljX3D4fIPL5ReCX5UpypsZOsRjwaEpbtpInUF
 Vbs85otyY01DQCAxTwGbR8oouWWAWMjEQSVnVvMSD1Vjt2PLTXDgHko0ihqteKhAwUbL
 cF4w==
X-Gm-Message-State: AOAM532NbbWdMBHOABQNLBAUZZ2CgbY+YCN9qxFR+3aUhw7ODfUoymb/
 g9Qd3xdckyVPVCp5HxxEEBxxZXCK3mznrION92WnwdUh
X-Google-Smtp-Source: ABdhPJz5bmBALzw+D9Jia6d4zvkIV02xWwFo/oM2e8pEt1WN25M6AUsNVPV+EY0iKhYAw1fQk4Bl1vsVwJ4nmUApjn8=
X-Received: by 2002:a05:6402:1c1e:: with SMTP id
 ck30mr14064996edb.154.1589822434411; 
 Mon, 18 May 2020 10:20:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200428003214.3764-1-david.e.box@linux.intel.com>
 <20200428051312.GB17146@lst.de>
 <de052d30cc881ac67f9410b50b0760ee5bf9a623.camel@linux.intel.com>
 <20200428142247.GB5439@lst.de>
 <de2d78556fcb10f97364201256ac8f342a58eb75.camel@linux.intel.com>
 <296064bbcf702744bf603932c9d849307db2e5b7.camel@intel.com>
 <b0ca81f973ba55a2d6a8c84bc00f2324bad64f30.camel@infradead.org>
In-Reply-To: <b0ca81f973ba55a2d6a8c84bc00f2324bad64f30.camel@infradead.org>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 18 May 2020 10:20:23 -0700
Message-ID: <CAPcyv4hE6iW3MwW=qybN8aXN4wHJ7R2OCDCUEw9FdKu4NeZ6iw@mail.gmail.com>
Subject: Re: [PATCH 0/2] Add support for StorageD3Enable _DSD property
To: David Woodhouse <dwmw2@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_102036_940655_52FF8C13 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@fb.com" <axboe@fb.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "david.e.box@linux.intel.com" <david.e.box@linux.intel.com>,
 "kbusch@kernel.org" <kbusch@kernel.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>, "hch@lst.de" <hch@lst.de>,
 "lenb@kernel.org" <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 6:52 AM David Woodhouse <dwmw2@infradead.org> wrote:
>
> On Wed, 2020-04-29 at 05:20 +0000, Williams, Dan J wrote:
> > The *patch* is not trying to overrule NVME, and the best I can say is
> > that the Intel Linux team was not in the loop when this was being
> > decided between the platform BIOS implemenation and  whomever  thought
> > they could just publish random ACPI properties that impacted NVME
> > operation [1].
> >
> > So now David is trying to get these platform unbroken because they are
> > already shipping with this b0rkage.
>
> This is what we have WARN_TAINT() for though, right? It can suitably
> warn users when such breakage is detected in the platform.
>

I see WARN_TAINT() as "BIOS implemented its specification wrong". This
case is BIOS "implemented a mechanism in the wrong specification".

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
