Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB5C72435
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 04:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBEQvhoCaCeSSeCbmfNLP5rI/Op3fr9mtF8gXcruw+g=; b=Buf1XsOW8ry8ZE
	e0VWu0pWO4N0UM5DymfL121Z1nCPKa7Ve/88ofja+eMLSMpiK7x4DRt8WMhgC4OBC1Nz7A+eRkOkp
	1owhsUZ4r+oUVMglr/ys/meTKT61pdBxQXshN9xpfhdHaTuk8+a5j9SaD0QrIjbn//aQQcTz1r76A
	d7mo+NgcRIni0XkNF/gSXVOH7YkpYEYACGmFUYwn9REJLKvkaR7CNJ9PbqYgRfqm9P5vDrsV+vJSd
	49YBPxqGDL7GbRtMixVrkDbqBd3wL0FCcyMX0iIOkcoXMbQXGakRebK5sXqBl92iCQD66AsrVicvJ
	SS/1hwHWWHsCm7R7/w9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq6ei-0000rL-VK; Wed, 24 Jul 2019 02:05:25 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq6ec-0000qo-6E
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 02:05:19 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9E45183F51;
 Wed, 24 Jul 2019 02:05:17 +0000 (UTC)
Received: from ming.t460p (ovpn-8-24.pek2.redhat.com [10.72.8.24])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F7FA5C225;
 Wed, 24 Jul 2019 02:05:08 +0000 (UTC)
Date: Wed, 24 Jul 2019 10:05:02 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Dongli Zhang <dongli.zhang@oracle.com>
Subject: Re: [PATCH 4/5] nvme: wait until all completed request's complete fn
 is called
Message-ID: <20190724020500.GE22421@ming.t460p>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-5-ming.lei@redhat.com>
 <8d6268ac-42cb-d14a-d4c3-c8c285fca6b5@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d6268ac-42cb-d14a-d4c3-c8c285fca6b5@oracle.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Wed, 24 Jul 2019 02:05:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_190518_251527_CA7CC1F4 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 12:14:24AM +0800, Dongli Zhang wrote:
> Hi Ming,
> 
> On 07/22/2019 01:39 PM, Ming Lei wrote:
> > When aborting in-flight request for recoverying controller, we have
> 
> recovering
> 
> > maken sure that queue's complete function is called on completed
> > request before moving one. For example, the warning of
> > WARN_ON_ONCE(qp->mrs_used > 0) in ib_destroy_qp_user() may be triggered.
> > 
> > Fix this issue by using blk_mq_tagset_drain_completed_request.
> > 
> 
> Should be blk_mq_tagset_wait_completed_request but not
> blk_mq_tagset_drain_completed_request?

Will fix the two in V2.

Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
