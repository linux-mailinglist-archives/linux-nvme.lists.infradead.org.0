Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E18E018C2A4
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Mar 2020 22:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASSayyuO1pe5fsCiUrZp1kFVlelcxZe3xnMNXwXGIXE=; b=lNdJZUjXho9sE1
	Dio6nMsPFuFMOxkYqylVN8/cZMzMQyIO6lvsDARUETAISkM7Hdq6E7rHFSJl+lZ98FUTDEvODPIDP
	hMpLNnHnnAQdDVgN7Rp0I1ZBShYO2FMFv8Iz8brfh2VdCQZflHq2or5Gh6zNe5+gMdwqIXa8RqA6X
	ytmqHxCIWZr4fFD0T41O+RfGZOwjRku3L68GzOx1YeXToYhP0rorSOb1Zh/GKexreEgUceskid/7S
	//kvw3MfYtmf30ebXuU0sApPceDkXR3nH81W9hDFh2MYIVz9+CuD0t2xqHx42lALOtWIaSoxLmBfW
	X46uu5SdnPVk68tmkaTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF3Bh-0008HR-RN; Thu, 19 Mar 2020 21:58:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF3Be-0008H6-JK
 for linux-nvme@lists.infradead.org; Thu, 19 Mar 2020 21:58:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id 11so4476864wmo.2
 for <linux-nvme@lists.infradead.org>; Thu, 19 Mar 2020 14:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DB3YYIIUIJs2/T8ItUVmTy2bglm16clHCLna3e3Z/lM=;
 b=Zoh+9qjnRHoNgsfCd7D5XU1zfR302FMUQQB1Wn1fqY3N/9KlDRLWTxLGYrwTE9/opY
 B366klEBpJPqjX5Z6m8GDjjdT4Tp3xLMn98UnndiRQaFdpRFjBnc3XlBS5gKE6OsPrEV
 kbT4bow0NwcgwrH8gG0kbR+PVZuW7fUV3F4W8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DB3YYIIUIJs2/T8ItUVmTy2bglm16clHCLna3e3Z/lM=;
 b=N42ZNlPObxNjW1w2p2VwTLzZN5ZIyIMYHF81eOWfEG402/z3czNBvmJ1T/ekVIM67f
 FwpvsRXVQeupqhsiKq6TGiyAbbPVxg8rZMdguqZVhvIfTUCWUxOf8bvXFhjfg1XJuC2a
 xhubPoyheIWRFu1ekf45p1Bpu+tLauMK9Y+R8z9HiLztffl5IcY9vWaueK1sBKTvgcaS
 gOUXB4feb5ijJh1Xwcqa0abcF0h8eus4UzWT+HwBH5mLL86LY0RgUc+RxuKfc8A/l7b+
 foDFWEBRqwyPW/hSiJeJn7avqYBpGr4G0TlOQqpvb/XaNaUXJaii/ztTm4PVHQt1ZSwj
 m8NQ==
X-Gm-Message-State: ANhLgQ0wIUTS63cZKYD/sDB5ylRgk+L5jpv5UlS4zpZoMVm2F2TMlynb
 yf2DiNkBOJ4eWEJ4g+Kq60mMNA==
X-Google-Smtp-Source: ADFU+vt/GtwStWc2HQ/XEuUayBLVnS5q98IvgRtLPgHTy5VC5y+I28Nm3aQgMRf3X5zmjtNIYbLD1w==
X-Received: by 2002:a7b:cb42:: with SMTP id v2mr6273842wmj.170.1584655124891; 
 Thu, 19 Mar 2020 14:58:44 -0700 (PDT)
Received: from chatter.i7.local ([185.220.101.11])
 by smtp.gmail.com with ESMTPSA id o9sm5489305wrw.20.2020.03.19.14.58.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 14:58:44 -0700 (PDT)
Date: Thu, 19 Mar 2020 17:58:38 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Jason Gunthorpe <jgg@mellanox.com>
Subject: Re: [PATCH v2 2/5] nvmet-rdma: add srq pointer to rdma_cmd
Message-ID: <20200319215838.bwxu3esvu26q2fje@chatter.i7.local>
References: <20200318150257.198402-1-maxg@mellanox.com>
 <20200318150257.198402-3-maxg@mellanox.com>
 <20200318233258.GR13183@mellanox.com>
 <1a79f626-c358-2941-4e8e-492f5f7de133@mellanox.com>
 <20200319115431.GU13183@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319115431.GU13183@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_145846_641131_83FC6C07 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: loberman@redhat.com, bvanassche@acm.org, vladimirk@mellanox.com,
 idanb@mellanox.com, linux-rdma@vger.kernel.org, rgirase@redhat.com,
 shlomin@mellanox.com, linux-nvme@lists.infradead.org, leonro@mellanox.com,
 dledford@redhat.com, oren@mellanox.com, kbusch@kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, hch@lst.de, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 08:54:31AM -0300, Jason Gunthorpe wrote:
> > I'm using "git send-email".
> > 
> > Should I use some special flags or CC another email for it ?
> > 
> > How do you suggest sending patches so we'll see it on patchworks ?
> 
> I looked at these mails and they seem properly threaded/etc.
> 
> I've added Konstantin, perhaps he knows why patchworks is acting
> weird here?

Looks like it's hitting a race condition in patchwork that will be fixed 
in the next release.

Until then, you can grab these patches from lore.kernel.org (e.g. with 
b4), though it won't help with git-patchwork-bot integration.

-K

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
