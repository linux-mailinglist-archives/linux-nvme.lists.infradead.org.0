Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C511809E6
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 22:06:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfILJkyWTtTxXVf2+gILsy7EAqoO2Ni8m2f8ZWXN5zA=; b=ejhsRRHXis678J
	sbS5AJuNC+4m2/YxG2q8XTKL1Uzowr9vQZZeTqvSHtd6WQfs5iIpuELBYYRHMViLF/94eSwdKYAGf
	SdLQvVAeN0zImHfL8I6IKLOBqhGwmvyfBUNqTbKDaBNx/JebJ46XKNxrx5JnnMfBO0LF0T7tLlOsZ
	mJ559vSNaNaeBF0Oz3RqtcvlHsRSy/5eGrGMeXhw3Tre9J3XiexiLoR8oQW+ElKsz7KTSIRAJFO+y
	3QvXSRPdsbjPRfWs/EIIDsQTBI97aRgdk94pdsj89pyzrtqumaSr460Nmy/+bj8cfn5qpicT/8l9+
	+ZPpqsJfbHdqzupCJh7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBm5O-0000LU-7C; Tue, 10 Mar 2020 21:06:46 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBm5J-0000Kz-WF
 for linux-nvme@lists.infradead.org; Tue, 10 Mar 2020 21:06:43 +0000
Received: by mail-ua1-x941.google.com with SMTP id t20so5225087uao.7
 for <linux-nvme@lists.infradead.org>; Tue, 10 Mar 2020 14:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D+CcqMCGGfLANRRYdXwD4WpcsZVTawPHYAphcEMeQ4o=;
 b=YFRTqQc2/Hsix88xWZybbWKJ9cBtq3ncR8SjfbllUrNUVLYpAlaHL+nBrpMjoAutfe
 59n1TGQpps3+Me4NTettQ/Oy13uKNGkFdnTjL5cUYtWiPCpsypibW9gLGUJ6ok4RR5T6
 o2JkokJVCIqRjK3PfuWnWRj9rKUCT6J5ppLA7z1nPGkGkHjZGkqMSkDLFRnHK4Er+lpB
 GlwGcIQMgz5lR/88F07BNTKtZ3LAFyEnA39/B11OBSN4Gy2wWzbFQYDpUCUeV4+Wlp7W
 2ntkvXJLp2e4k7npye9CpEr4L2oqVoFjGKHfZSVZjJ0wlU2YEs/ibIUonb0U+WaWWT58
 NmWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D+CcqMCGGfLANRRYdXwD4WpcsZVTawPHYAphcEMeQ4o=;
 b=KNNjKmm5Jh6KzJWbabRlbcYgFTJmMB5euD7krlSqc1PgRVbMlxhqfDHIhT6TmEqwXZ
 L9qHbGTaeJnBtd6t59alCzh++G6xUOCWihf+JJL/bCOFkAkh4Es9hKFganhnrFKqey+q
 tT3YhptGx+onHiaiVsb8XMMSkaIgCBqr5txdli/mqCMbCUtcJkfqPX6Wh0hBrIvkinxh
 WMC0fyXjbCdP1pUgzjjHSfqSK9SQRarQ0D5MF9KiAEJvoN8dC1KaJk9f524oClufJM+y
 iDA/97LHusvf545bqMxX2+zXzo7lpmAgaRdy8m3uowQZMYLiKPJ/nJDaSErM/ACldLfA
 HfJA==
X-Gm-Message-State: ANhLgQ1b0n0Rdi7dx7lmJEd1ANltq7RedFP2PUr2Q2vt0/jN6JQYkhGE
 jMsoWebk7Io+hqexHjr09ign0R3XQt6rQ62fDOlzTPqGQvQ=
X-Google-Smtp-Source: ADFU+vsHHk6A34kQIBnfLV3AVBmU5FJ744RLJpiFLaAgfaDwF/R5t4BOhiVF8ZbEHJpL5Dv/tmd2SLw5fyqZ9skx6eQ=
X-Received: by 2002:ab0:4913:: with SMTP id z19mr12890991uac.132.1583874399030; 
 Tue, 10 Mar 2020 14:06:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200220145241.12982-1-kbusch@kernel.org>
In-Reply-To: <20200220145241.12982-1-kbusch@kernel.org>
From: Keith Busch <keith.busch@gmail.com>
Date: Tue, 10 Mar 2020 15:06:27 -0600
Message-ID: <CAOSXXT7CP+4OGkQ+W9GR7kXYMvC=5iuAzgc2t5mv4BcEF+mBbA@mail.gmail.com>
Subject: Re: [PATCH] nvme-multipath: do not reset on unknown status
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_140642_062260_62DCAE6B 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [keith.busch[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
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
Cc: Hannes Reinecke <hare@suse.de>, John Meneghini <johnm@netapp.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 7:53 AM Keith Busch <kbusch@kernel.org> wrote:
>
> From: John Meneghini <johnm@netapp.com>
>
> The nvme multipath error handling defaults to controller reset if the
> error is unknown. There are, however, no existing nvme status codes that
> indicate a reset should be used, and resetting causes unnecessary
> disruption to the rest of IO.
>
> Change nvme's error handling to first check if failover should happen.
> If not, let the normal error handling take over rather than reset the
> controller.


I've applied this to 5.7. Many developers had input to this patch.
Please let me know if attribution should be adjusted, and I will fix
ASAP.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
