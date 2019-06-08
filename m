Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FA439A10
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 03:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uPVOfTub1gkTB0YF3kAAldg/sfigKRGt8hbLEAizMCY=; b=TnVsUKY/0kLFn1
	Hw1efoAIIZWWTZi2mlLVO0poYR41wTThG6hFNWHgyXbAn+P8HFLVoJkCkWmDjgNewEi6O7FPRX8+h
	PlyhxNScwYaa0AubrvVMZfKpO2V2dePgtub3WvCTCja1a+M0d2q52FrA1ecsvvz01k/GsxFt9AgUa
	WykkPgarqQnBqDGGfZjGZM0d6qMvCFA9X1HntTismkMrTC8P0g60VnxNz9Naqc+/jlhvyFSZy23ij
	rgOEbWzGMsCtxpLihYLb9s4S/ad22APVlkJX3NKZ5J//CXXq4ZO0ZjUzmbZ0hzt9a61c/Pclhy/qb
	b7/2ulVeWLD0GaZ67mgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZQUC-0002lL-71; Sat, 08 Jun 2019 01:49:36 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZQU6-0002l1-O7
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 01:49:31 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so2115148pff.9
 for <linux-nvme@lists.infradead.org>; Fri, 07 Jun 2019 18:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RC9MuomMEj2kViZSeaLwEfNa7xTAVxtoTz4pEjU3nh8=;
 b=lMBj/xEPPh7qoAQ9Iyy5hbxzyH0UGqOg7OqBKegcdJznH0sjM7yzEMUFf2SLUIXJXt
 od7e1Imrb97VPCip/RTwtsQRBCCYcdeMXrSQm+aPf+fmrn9ocoFSpGA9rSUVLbRz3CUW
 huGP++F/wh/4dMenXvLBxJTYpFZzCp0wx7fnaxEbkTOdy6HnTrXtaaw727+2TjG+nU6c
 5L+dWv9sEAdTt6CPa0fCLJ/UbxaiKiQAStx2IGNCNSIZ7oDiQxlkuH39xTNyM+3BwKSA
 yLM+U0r9qSnNKzT/FTh4Hf+WNuTdkv+ZxcJZNGeZiqo+hSR7eQ65hcLVzEnTw59CU8cj
 ihwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RC9MuomMEj2kViZSeaLwEfNa7xTAVxtoTz4pEjU3nh8=;
 b=CnnqqPTUWJ1mSzF7g5Ihk61elA4L48DpTB7em2lslu9aZs8YsImv46tgIsUVxPaj7H
 CQyzyGGTq86fOgJSiYwixGsBHuZD4Q679SW820caC934OGfGC0joVmpnWVPbiIOl3ok7
 7ujmb8BcxYOhv30fRXMdAXoeclDUWd8O7VuwrKhhjZwCalZrJko3BYjn7Kv9ms5fNPbF
 pDTOfT7BzJpsg94beivxgIFiwz4nfhp2FcYnEgQ7ERmvR2rJ9t4REpWfoDHwSVTAZksy
 npcCNF87Il8IQkCi4HdICegZDHcoUQMPSnQgPJ5QL5DE42eyxgwcmwiP4Ei6ToFAhdrP
 XIlA==
X-Gm-Message-State: APjAAAWL0cEtOz8qeYL/4XeL9XQPSw8SlHROuoM6pQL6lNuwhnmVa33d
 BBzDE/BLBWCMWsXuUaRZ2Ft9VbMvnp0=
X-Google-Smtp-Source: APXvYqzM/NGOjnXNI+y5HhB89VLC/1BQRRn6BrUdsVYwhDMnlsej0JJk2kInxc423JEDzEk21PdcgQ==
X-Received: by 2002:a62:2983:: with SMTP id
 p125mr21160779pfp.154.1559958570007; 
 Fri, 07 Jun 2019 18:49:30 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id y185sm6835239pfy.110.2019.06.07.18.49.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 18:49:29 -0700 (PDT)
Date: Sat, 8 Jun 2019 10:49:26 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [RFC PATCH V7 7/7] nvmet: introduce target-side trace
Message-ID: <20190608014926.GF1276@minwooim-desktop>
References: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
 <20190606194512.11020-8-minwoo.im.dev@gmail.com>
 <20190607165426.GJ7307@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607165426.GJ7307@lst.de>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_184930_814588_D6B61BDA 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-07 18:54:26, Christoph Hellwig wrote:
> I'm not a native speaker either, but maybe s/totally/entirely/ in
> various places?  Otherwise this looks good modulo the comments to
> the previous patches.  Also if someone has a better idea how to
> share code without creating a new module or bloating the core
> kernel please speak up now.

Thanks for letting me know for tht word :)
I can see my words "totally" in the commit message and the header
comment in trace.h top of the file.  I'll fix that up too.

I will prepare the next series if no other comments on this series.  If
any, please give some advices here.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
