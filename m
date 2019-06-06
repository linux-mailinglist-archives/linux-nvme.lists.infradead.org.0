Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 227CA36EF7
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 10:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2Lx/mwRq5QVNntzx8Xw+tBu8/8EluaYdexubufYExM=; b=NdNfM7BuQA6rb/
	Yh4TFx8HnsVZqEF+we33fNqgLPX2INZPHs6H4uo4o48/Sw6d7etShT3k7RMegM2foUOO3RjI0pnjw
	W32rMnHtb0K/lqKJ64XamEC0KnXcW4jY/KmZhLlzhgocg97/VgxherSZZzRSdqDYQFy9eJH1sapIv
	M6pZiOrX7YoG0SLdQ3fzO3CO7p2/QLV4Z1Di4My8/w2uXK5+lm1VAJzXoxfoFPUd0Q9+Ya+ak0bOb
	y2+l/H3QYpLp2Q/OJ5/p3HDIj0F9OjeFmnGs4kJhAPFPyuX1kVtxVrmc+F7UD4toWdKJA38cfwlRw
	sZJAn2OuyLbPDFRIRCWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYnzy-0002UK-1u; Thu, 06 Jun 2019 08:43:50 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYnzt-0002Ty-Hs
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 08:43:46 +0000
Received: by mail-pg1-x543.google.com with SMTP id 20so960149pgr.4
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 01:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZjqVgA3AM7X58/z9N3/J+uyf2wH/QeaqLpMbejvMyvM=;
 b=dZKvcGrIiFVzvMG/Hyd9oAS4/ynJ+0c8oUMWTxuo/IgYcqTdfFN/vw9500mC3e7Ozo
 hzbAJmZmkrOP0O53bdkD6aRpF1YOoOwYdYJSLalUF/aFMhSKxSoItXrkZl90AQ4CAYf/
 MbPJXtC+yHqvECvWajYy+bNS7DFq/tHDUdKOZoTZ1tIy2TPjWnH3a0B0Uh/vDr7SUwSA
 gE4H9LHz+CGjVILTK+M0fXZviuUoWfZcNiqLzv4Y+T7F3+H2Mz5FNj7YB+b5EzdAkcdb
 ne7wcAXoZ7xoT2tQTcXNYY5EMccGSN0wd+p8yaXaQqLUhfgBL63Lydk9gez0SIwbcGTz
 daFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZjqVgA3AM7X58/z9N3/J+uyf2wH/QeaqLpMbejvMyvM=;
 b=diqZZL1zqzWT+Bt5SUbICpaBxW19X/OTdeVmaJ+hl1mRqRI99XCArdRT68JqJ1hBIi
 TNBXsz1sJDTGQxqgOuBBJ1/+6nS/4fMBbpgPMAhf0NKm0fBAgtQLnSp7pIuSqlXQGmxL
 CsZRtGKKmzMepilLnYKYTOLxqjn/dM2C4PUHAMp8qDpwdyTHcrg2l3QV18NYAFSn9HJK
 NNHjrb8o5ojWxCUue5eS1q7SHryZQ6qELB9jOqztLWoxm9QA2M4BkU9E0yUFA9020MZN
 Z3DdjTWGhfwGU85cjpWn5nE0GcbEGgTQqgSbP1ior9WK3HGypYaw3UiTAJNplBQthEtj
 lqYw==
X-Gm-Message-State: APjAAAV7SZ6UCwUqclJ1g4POqYEqiTU/lNui77UMuT0xnuqHi6iBK2S1
 LqocIdIXq3LiOIbx6Ekh8o7W56eDkB4=
X-Google-Smtp-Source: APXvYqyR3h5bKWDAor6bRHBr4IdTm1JOxsspmyE1bGeheTbQ2z4c7Y/QQP0Cvyks98/ObYZRRkrbNg==
X-Received: by 2002:a62:2ec4:: with SMTP id u187mr51311467pfu.84.1559810624616; 
 Thu, 06 Jun 2019 01:43:44 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id b15sm3165708pff.31.2019.06.06.01.43.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 01:43:43 -0700 (PDT)
Date: Thu, 6 Jun 2019 17:43:41 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [RFC PATCH V6 1/3] nvmet: introduce nvmet_req_to_ctrl to get
 ctrl instance
Message-ID: <20190606084341.GA18020@minwooim-desktop>
References: <20190606063229.17258-1-minwoo.im.dev@gmail.com>
 <20190606063229.17258-2-minwoo.im.dev@gmail.com>
 <20190606064848.GF27033@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606064848.GF27033@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_014345_613890_8FB85E84 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-06 08:48:48, Christoph Hellwig wrote:
> On Thu, Jun 06, 2019 at 03:32:27PM +0900, Minwoo Im wrote:
> > nvme host driver can get the controller instance from
> > nvme_req(req)->ctrl.  In case of target driver, it needs to get
> > controller instance from the struct nvmet_req with sq where the request
> > has been submitted.
> 
> Note that normally we can just dereference ->sq just fine, as it only
> isn't set in the low-level code before accepting the initial connect.

That's good point.  I just wanted to have safe-code here, but that would
be fine.

> Maybe keep this as a helper in trace.h?

That would be better to put tihs function to nvmet.h once it's needed by
nvmet code later time.

Thanks for your review on this, I'll prepare the V7 series.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
