Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3A1170957
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Feb 2020 21:23:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L2UvptAboGLy2uFwRx7HSLFphZuHT0DPw+DfduIuP0g=; b=MG+X10KmjW2ebl
	gCCkXds8R4LNr38jlvzQ0sQC+3uhlcTiAk87U++MB5k++b2zTA2M2RM6WopaWXYFXRjmQ3ZJSUA1m
	lcII+jekTM4vY8+Hb5l57Lj8HAWBNmIMsCaMbyxTQIJvsn3zC2D8L1ddDNJ8Nn0MDQkjct4T+ydXN
	VtvNwW3e2doEp2Gp0uDeGbLJ2R5iq4Bp+IVMQFOVxIstJrhCdPkmeelddQg/7vhjKw9Xf/j0k43Dy
	IMKVml2tWbYZVNKtH6BWfXbbYlivVLIeDEKgHymL4v2dXj1e186VtNUBgYR8C5yDk4Llb+qFK/dtP
	ouzVGfkQkMQwSbC5jI1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j73DD-00088Y-RH; Wed, 26 Feb 2020 20:23:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j73DA-00087z-Ks
 for linux-nvme@lists.infradead.org; Wed, 26 Feb 2020 20:23:17 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93C012072D;
 Wed, 26 Feb 2020 20:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582748596;
 bh=ekk95paQTlR6dEQv2fZl5YosAk4Pd1McLq28vUTVaqU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B1D9dNV2QgsHjtfsbmmHHDMKfGPRFG4poH+Ju6qKAyKgR8atX//e2iljlM8u0/rXY
 +i26Z3FCmyyNd+gOi+4BRBs8IlSoK8wFW1UMkz3LAJquX6WNrEi3FIeK/zl+a07Vao
 E+mKqt/u+LY9Gmk0XuuTRYyMAvAZfmmTyf2QJ69U=
Date: Thu, 27 Feb 2020 05:23:09 +0900
From: Keith Busch <kbusch@kernel.org>
To: Bijan Mottahedeh <bijan.mottahedeh@oracle.com>
Subject: Re: nvme_poll() CQ processing
Message-ID: <20200226202309.GA24127@redsun51.ssa.fujisawa.hgst.com>
References: <143eb9f1-7f17-591a-4302-a86ea1114e87@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <143eb9f1-7f17-591a-4302-a86ea1114e87@oracle.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_122316_706064_5050B535 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 11:20:19AM -0800, Bijan Mottahedeh wrote:
> A simpler theoretical example with two threads:
> =

> Thread 1 submits enough I/O to fill the CQ
> Thread 1 then processes two CQEs, two block layer tags become available.
> Thread 1 is preempted by thread 2.
> Thread 2 submits two I/Os.
> Thread 2 processes the two CQEs which it owns.
> Thread 2 submits two more I/Os.
> Those CQEs overwrite the next two CQEs that will be processed by thread 1.
> =

> Two of thread 1's IOs will not receive a completion.=A0 Two of thread 2's=
 IOs
> will receive two completions.
> =

> Just as a workaround, I held cq_poll_lock while completing the CQEs and s=
ee
> no errors.

Thank you for the notice and the anaylsis. I believe you are correct, we
need to avoid scheduling the thread if it has cqe's to complete,
otherwise another may free enough tags out of order, allowing a queue
wrap.

Your work-around sounds okay to me for immediate inclusion and for stable.
Would you like to send the patch?

Longer term, we should get rid of this two-pass completion. It was
done that way when submit and complete were using the same spinlock, so
reducing the critical section was helpful, but we don't need that
anymore. =


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
