Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8769C1F3DB3
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jun 2020 16:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Up4aZdlb1QpY1h/z3SwX2PFiGZWxpFkg7y3Vz1Eeoww=; b=mGX99Kknm9aRpg
	iWivaLaGVM0h6GqihiaETH6BbR+OKr7IyijbaGve/Y+I6DJANc4aTjai8vkUuOWzIhjEokcOS0hEM
	rrckJCCC7t7EtQpkFW/tvqbQrUhvlgRRD4Ldwvpbj7AalcbiE60EYaGUPZWCzMeQj1dWVJQ7DpDfI
	ub+z50SO5U2sfyH3ZHaMnNE1HL8LGm+St0aLT/8FpiGvj12SkkAK2RE7ppUcSmPjRWzMDFaOkLuDG
	RUitvOOJegTSl6n22zFue1qbuGNicaIv1Vr6jC9nrm3TzaV0Gw9y4n6MRpT3UXHwTFAGLGKqaf7ur
	wx/hsYBkb+ZDidzTMeAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jif1j-0008AZ-Dw; Tue, 09 Jun 2020 14:14:55 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jif1f-0008AK-Do; Tue, 09 Jun 2020 14:14:51 +0000
Date: Tue, 9 Jun 2020 07:14:51 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Daniel Wagner <dwagner@suse.de>
Subject: Re: [PATCH] nvme-fc: Only call nvme_cleanup_cmd() for normal
 operations
Message-ID: <20200609141451.GA30656@infradead.org>
References: <20200529113740.31269-1-dwagner@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529113740.31269-1-dwagner@suse.de>
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
Cc: Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks, applied to nvme-5.8 with some edits to the commit message.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
