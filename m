Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDAA1C1B19
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 19:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cf2ZiC+trtYKDk8FNMGBO6JJ0ZDJLc9EdJtRaUTebZQ=; b=FNtuB/Qtt5WJhT
	iZXPf5TGnN/rO4oOdZScCKMdJhE8irXdBLGIokRg5Ipt3wYNtfs2jnJyPyl8txjN6gs0BJwFkTCVU
	GEL/xnLFRxsfiSAuGZLYNSXM/UBxe4ByPCvdqW62YshViJGjVYgxNsvd2KE9hXpllXJznhv7PcWD4
	9biSfC2H4cvptUmB1Qy9L1J9Llt0yuborCWwpxF5WOAzuOoqg6oqGLHcuMrI6r4WMeAqfWeKsXAse
	YIVhQK4RqZnX5DTOXuG2pFi79KSuqtQEjQzITsFvOCKkh+am76esDmQSdqid8AqrrOSZ224jgpKtg
	MRecODBKdg22aLldHtFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUZ4r-0007YL-FH; Fri, 01 May 2020 17:03:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUZ4n-0007Xp-0o
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 17:03:50 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4DAB3206B8;
 Fri,  1 May 2020 17:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588352628;
 bh=s+yE6psxf3KkcTLQCC4Gza4D+cLOuX0rOBi/W7lBLec=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZFgUu2qBcRY5f75XE4TRdpyZ46dtzu8gwbdPnOfru0a1yrxGFTiLoGCmUDChs37i/
 wmD+3VDfCRMlBp8xov2d24igo8EOkBacJtLAalcnCLc2mwHV2Gw9cHxUgQKghaY4ny
 r82geFY01MoBNEtR4AauLhe4zWj1bsoAtj8vxGE8=
Date: Fri, 1 May 2020 10:03:46 -0700
From: Keith Busch <kbusch@kernel.org>
To: Yi Zhang <yi.zhang@redhat.com>
Subject: Re: [PATCH nvme-cli] nvme-print: nvme list -o json fix
Message-ID: <20200501170346.GB2273550@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200501074210.6381-1-yi.zhang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501074210.6381-1-yi.zhang@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_100349_084028_D49DB4E7 
X-CRM114-Status: UNSURE (   5.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Justin Tee <justin.tee@broadcom.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Applied, thank you.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
