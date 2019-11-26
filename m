Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE3410A36F
	for <lists+linux-nvme@lfdr.de>; Tue, 26 Nov 2019 18:38:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zabxVaFk73Sxj4xGAyTpk1CNRAEka3Hc9l3WoWR6Bl8=; b=RQ6cuzeYcWAvjs
	Fnu1nJCg8a+Ce6FWkALJbQ+yqZ62SfF4v9fA/LgYzmitzaIrVWluC4rQePLB6cUgWow5tySuegbEH
	4VoxaO4b9F1gnN60XWmLob9LOOKR19Wqx8NhiiULwQAUbpN8XbS5mxWN77esY4Jc/qtoX1L4HDKnI
	0aaNpk2MYZsJkZTOLwzWN3UswEk5/bGE6fAxLK5fan/PevLffRsPT/AzG0SHfhtvVXiuYaJQr02Bu
	4eq/kNoBuNggVFmpPy7IHcdUtYIAMdofmF/vxE6S9Whj3PXHDKl9sDD7HLwTZ1WSbXbo5Oqg5ypjD
	OBBS8/+t2OEfPQNEqObA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZenM-00071K-Kt; Tue, 26 Nov 2019 17:38:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZenJ-00070g-8K
 for linux-nvme@lists.infradead.org; Tue, 26 Nov 2019 17:38:34 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AED8D2073F;
 Tue, 26 Nov 2019 17:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574789911;
 bh=k5vseHPFcPNtfZolSAZ48U3bYdwd6sjrLwHHme7ig8I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tpK2le2SZMzBjg7XE5ex7rab9eIJXStNfSXJ1Y+yCzW9eMu/IN6+rcZhE+ggckpad
 mxC97XBlo//NMF4GjGD3br5vAep6oSz/0ZvOTOuB/tbb7Z0G+T26Vmf58npAymRF7V
 VeosbgV52SGQyCukKEPAk1Q0P+0qAOFelP3a1+7I=
Date: Wed, 27 Nov 2019 02:38:26 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 2/2] nvme: else following return is not needed
Message-ID: <20191126173826.GC2906@redsun51.ssa.fujisawa.hgst.com>
References: <20191125160612.3542-1-edmund.nadolski@intel.com>
 <20191125160612.3542-3-edmund.nadolski@intel.com>
 <20191126164803.GB10487@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126164803.GB10487@infradead.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_093833_320657_2CEEF93A 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Applied to nvme/for-5.5

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
