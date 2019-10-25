Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9299E4087
	for <lists+linux-nvme@lfdr.de>; Fri, 25 Oct 2019 02:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PFrdanssNUki0xWmw6LobMYEwH2hiQdHj/U4RVwHSUs=; b=hIFvyhGgbaM7bq
	9fCCmGhyw1ITSnKGJoO6/nX1wxgGCzwqksjlX6KWxVGhS1hi+/Xz1SJU3dUqqvItrOJBIgJcnHeLp
	NVD1KvggoAgw38d8g132I/iOwExiJ3PVVPdZsVcsXkMyYuJJYrJ5ckJnces8SWdwkaNTAttBtTEwF
	KfSbxGl4uxecJ4+C/M635iSFDW3arifqDLEtUCwAtDl+gZno0jyGZbztqXwdqQYz5IvCq9sc/r8wP
	xgZ4ORNqTGVWo4tc3HQgQ/tZNib9KMpw5u0hgp125Qr4dyQ3XEWoyJPZYcTuf0M0I6k1BMO/wV2il
	5fQRM4ixacMIBCbp2ncg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNnL0-000710-EK; Fri, 25 Oct 2019 00:20:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNnKi-0006o3-Ox
 for linux-nvme@lists.infradead.org; Fri, 25 Oct 2019 00:20:02 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD63321929;
 Fri, 25 Oct 2019 00:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571962800;
 bh=kU/ViuSuZqTFjDVM7ycCIhIS9CF04caKOB2FC85DW9w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SbY70g+CqKPkR+o7LwNK+vfvD1RNsIOf5PQ1Xw+CIWDvhUEk/8qS3a/1Vrn7sT9yw
 0fbNkRyMfdkP+A/RCqm5FQznEgZ+SvgjnTA2bZwCSoU3/mBa5TkCk1zvVG2NURC5ut
 5OrgiT6PG5qCc5J48A6Vjyz9w0JJ4Tb04utB8HJw=
Date: Fri, 25 Oct 2019 09:19:57 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvmet: fill discovery controller sn, fr and mn correctly
Message-ID: <20191025001957.GB28602@redsun51.ssa.fujisawa.hgst.com>
References: <20191024165558.28056-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024165558.28056-1-sagi@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_172000_831851_AE0FA55B 
X-CRM114-Status: UNSURE (   7.24  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks, applied to nvme-5.5.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
