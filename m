Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7104DC0D73
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Sep 2019 23:43:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xH5gm0xP5o9A7izOylSI40zSf6/sRTsOG7pCvIdPEMU=; b=e2UZlGtessagpd
	k4SIMSsBSr+90E+MMA4BhKj9aiPv3kphwQOIK6V5pKE2JN5etLp0olvt3iFSmvwifSCEOxeFnJzMW
	YFPNRdLLbabyvFAyIUJnHUrqFfOYk/ysjc1eqeqKk4kygt+7GURvbDD5z9NIGd7mlQAM+7RX3LH/R
	NeLppCZrxQuvaLKem6q6ytcYd4ZrGDAWvX6vjuxnZatUsJ1UA8bvhX4xM6AJ76i2GsRuqLirD1Q+1
	2ldSWQhDz4X7bpiiJbTEhHw8NPour7GMilFZQWn4bwmIcEUSwHrCjfmpy6R7DtiDQY/k+6Z6UJflu
	s+II448I+Y6xQqfhblNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDy1h-0005C6-06; Fri, 27 Sep 2019 21:43:45 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDy1Z-00056h-ST
 for linux-nvme@lists.infradead.org; Fri, 27 Sep 2019 21:43:39 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3F00768B05; Fri, 27 Sep 2019 23:43:34 +0200 (CEST)
Date: Fri, 27 Sep 2019 23:43:34 +0200
From: Christoph Hellwig <hch@lst.de>
To: kbusch@kernel.org
Subject: Re: [PATCHv2 6/6] nvme: Wait for reset state when required
Message-ID: <20190927214333.GL16819@lst.de>
References: <20190919213431.7864-1-kbusch@kernel.org>
 <20190919213431.7864-7-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919213431.7864-7-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_144338_072705_2B6FECCD 
X-CRM114-Status: UNSURE (   5.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: James Smart <james.smart@broadcom.com>,
 Edmund Nadolski <edmund.nadolski@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +/*
> + * Returns false for sink states that can't ever transition back to live.
> + */
> +static bool nvme_state_transient(struct nvme_ctrl *ctrl)

Can we invert the logic and name?

static bool nvme_state_terminal(struct nvme_ctrl *ctrl) or so?
Transient always makes me thing of something with a very short
life time.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
