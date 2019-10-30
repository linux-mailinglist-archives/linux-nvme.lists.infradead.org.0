Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6B9E9667
	for <lists+linux-nvme@lfdr.de>; Wed, 30 Oct 2019 07:32:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUvgKNzVgHdtf8+9G/wdkWdB5SYzVOTzLotTyPj2pok=; b=MfFNTOvHuJfS6o
	FS62XkOzZOZUQwvXjbzs8VZ3HU2V0qNkOuarfQXLtJAN9Ua1nb38aa87mFkKvAy3jKFPUQa69X/84
	7hz/Viaxfu56IPfKgIRXJu6ql4QG7/MUbEyXE3gbk50UdOXU8e8f/HNSaCkO1rrvNnY+OdVNwvaVa
	Qstib9R10E5Bf/yzAxJQnjb+PPbCkZHv9CT7j5DAQ7GkEe64sONIKpd1o0bAD9eGM1BH+TJ31j18M
	tkYKx67q77x9UhmDV4A0KrdaUwzTYFxM0bBBlVgggUNOpTvjctt62JJ+XbqQ94fAQlxCB3bqVw0rc
	HtDfFs2hQ0FsWefbsw+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPhX9-0002Wt-2P; Wed, 30 Oct 2019 06:32:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPhX4-0002WM-RZ
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 06:32:40 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B6422067D;
 Wed, 30 Oct 2019 06:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572417158;
 bh=mQJzQyGGNJJMVNEsin/hOVoiQxTy3AVKsq4SaWHqdoU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YmoKMAvz7GNgT70k0mfyfKvU1eFSZXqiqwhxHJI511Ssp7fCRjNfuE49Q3xMTm8vs
 71ZL5eeNfQVtp0Rl7MxXfXZrv2Ka/imud//Wfygz0QcTzCrC9+WKU07V9tvNE944Qj
 ilZQ2tDhxyrBkFdtLhon6YewDT3Biu+NTJk4U6Ts=
Date: Wed, 30 Oct 2019 15:32:33 +0900
From: Keith Busch <kbusch@kernel.org>
To: Charles Machalow <csm10495@gmail.com>
Subject: Re: nvme_passthru_cmd64 has a 4 byte hole
Message-ID: <20191030063233.GA16863@redsun51.ssa.fujisawa.hgst.com>
References: <CANSCoS8HakAy6zHgEjDiYQ87z83RJy-OC9ZfktRJwr+9kgnFKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANSCoS8HakAy6zHgEjDiYQ87z83RJy-OC9ZfktRJwr+9kgnFKw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_233238_915721_623635A8 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 09:43:20PM -0700, Charles Machalow wrote:
> Hey all,
> 
> I noticed (via some debug) that nvme_passthru_cmd64 seems to have a 4
> byte hole that isn't currently accounted for in the struct:
> From pahole:
> 
> struct nvme_passthru_cmd64 {
>         __u8                       opcode;               /*     0     1 */
>         __u8                       flags;                /*     1     1 */
>         __u16                      rsvd1;                /*     2     2 */
>         __u32                      nsid;                 /*     4     4 */
>         __u32                      cdw2;                 /*     8     4 */
>         __u32                      cdw3;                 /*    12     4 */
>         __u64                      metadata;             /*    16     8 */
>         __u64                      addr;                 /*    24     8 */
>         __u32                      metadata_len;         /*    32     4 */
>         __u32                      data_len;             /*    36     4 */
>         __u32                      cdw10;                /*    40     4 */
>         __u32                      cdw11;                /*    44     4 */
>         __u32                      cdw12;                /*    48     4 */
>         __u32                      cdw13;                /*    52     4 */
>         __u32                      cdw14;                /*    56     4 */
>         __u32                      cdw15;                /*    60     4 */
>         /* --- cacheline 1 boundary (64 bytes) --- */
>         __u32                      timeout_ms;           /*    64     4 */
> 
>         /* XXX 4 bytes hole, try to pack */
> 
>         __u64                      result;               /*    72     8 */
> 
>         /* size: 80, cachelines: 2, members: 18 */
>         /* sum members: 76, holes: 1, sum holes: 4 */
>         /* last cacheline: 16 bytes */
> };
> 
> (Since I doubt we can functionally change the structure at this
> point...) 

Well, there is no official kernel release using this structure,
so I suppose even this late in the rc cycle, we can change it with
appropriate justification. I think an alternative to padding is to make
this a __u32[2] field, which should also be backward compatible with
the 4 byte result passthrough.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
