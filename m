Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F588BB4E
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 16:20:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgpdxIIhoteFU1UobkW1IybSDSPmMqxsjUACGOHASPs=; b=RDxSCX0iTVdc3B
	sg7vxFolO9dDxl/nlhhmKwu+mtjyne7qovmwTta/E/RlHa4R3C2zjHWTYNUqTuFVgryKo3pnkaQ8A
	1fWH50Qulc18s5C0QKse805T5sh0tYM0S3DK0pU/+6+bMINbGQzsC1F69TzyYaDHmKGaqHM/7GcWM
	YMuJmN2rVgpIislgdig/lZje9cZhSIeQXattgxxw1JZqjmV8giR29rXS2l6zNwENdgZiuGMgjVMQl
	H2Neks3pyxhoFSktZdB/Oa/3uOn0ajtcF79lpBSBHRT4fpO3QPZ90NvvE24q4+KaX8hp9FP9MaGuW
	b1UnVTc3X2jFEhBECnuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxXeR-0006Qp-04; Tue, 13 Aug 2019 14:19:51 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxXc7-0005Ij-KT
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 14:17:29 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 07:17:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,381,1559545200"; d="scan'208";a="170408399"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 13 Aug 2019 07:17:25 -0700
Date: Tue, 13 Aug 2019 08:15:10 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCHv3] nvme: Return BLK_STS_TARGET if the DNR bit is set
Message-ID: <20190813141510.GB32686@localhost.localdomain>
References: <20190812075147.79598-1-hare@suse.de>
 <a8b400cf-94ef-a4a1-e196-a74e115357ea@intel.com>
 <1f2025d7-b79e-ad46-df73-66fdff1b5f28@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1f2025d7-b79e-ad46-df73-66fdff1b5f28@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_071727_849888_A9D1C2D4 
X-CRM114-Status: GOOD (  22.34  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Hannes Reinecke <hare@suse.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, "Nadolski, Edmund" <edmund.nadolski@intel.com>,
 Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 11:32:20PM -0700, Sagi Grimberg wrote:
> On 8/12/19 4:37 PM, Nadolski, Edmund wrote:
> > On 8/12/2019 1:51 AM, Hannes Reinecke wrote:
> >> If the DNR bit is set we should not retry the command, even if
> >> the standard status evaluation indicates so.
> >>
> >> Signed-off-by: Hannes Reinecke <hare@suse.com>
> >> ---
> >> =A0 drivers/nvme/host/core.c | 21 +++++++++++++--------
> >> =A0 1 file changed, 13 insertions(+), 8 deletions(-)
> >>
> >> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> >> index cc09b81fc7f4..5e1309709917 100644
> >> --- a/drivers/nvme/host/core.c
> >> +++ b/drivers/nvme/host/core.c
> >> @@ -267,15 +267,20 @@ void nvme_complete_rq(struct request *req)
> >> =A0=A0=A0=A0=A0 if (nvme_req(req)->ctrl->kas)
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0 nvme_req(req)->ctrl->comp_seen =3D true;
> >> -=A0=A0=A0 if (unlikely(status !=3D BLK_STS_OK && nvme_req_needs_retry=
(req))) {
> >> -=A0=A0=A0=A0=A0=A0=A0 if ((req->cmd_flags & REQ_NVME_MPATH) &&
> >> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 blk_path_error(status)) {
> >> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 nvme_failover_req(req);
> >> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return;
> >> +=A0=A0=A0 if (unlikely(status !=3D BLK_STS_OK)) {
> >> +=A0=A0=A0=A0=A0=A0=A0 if (nvme_req_needs_retry(req)) {
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if ((req->cmd_flags & REQ_NVME_MPAT=
H) &&
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 blk_path_error(status))=
 {
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 nvme_failover_req(req);
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return;
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (!blk_queue_dying(req->q)) {
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 nvme_retry_req(req);
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return;
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> >> -
> >> -=A0=A0=A0=A0=A0=A0=A0 if (!blk_queue_dying(req->q)) {
> >> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 nvme_retry_req(req);
> >> +=A0=A0=A0=A0=A0=A0=A0 if (nvme_req(req)->status & NVME_SC_DNR) {
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 blk_mq_end_request(req, BLK_STS_TAR=
GET);
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return;
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> >> =A0=A0=A0=A0=A0 }
> > =

> > This seems redundant, to re-check the NVME_SC_DNR here, after just =

> > checking it in nvme_req_needs_retry().
> =

> Indeed, why do we need this at this point? we can simply continue and
> end the request down in the func (after we trace it as well).

We need to override the default nvme_error_status() to BLK_STS_TARGET
when DNR is set to prevent upper layers from their own retries/failover.
I suggested adding that check in the existing unlikely() case, but maybe
it's more obvious if we teach nvme_error_status() to default to return
BLK_STS_TARGET for this condition?

---
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 8f3fbe5ca937..50adcdde44d5 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -199,6 +199,9 @@ static inline bool nvme_ns_has_pi(struct nvme_ns *ns)
 =

 static blk_status_t nvme_error_status(struct request *req)
 {
+	if (unlikely(nvme_req(req)->status & NVME_SC_DNR))
+		return BLK_STS_TARGET;
+
 	switch (nvme_req(req)->status & 0x7ff) {
 	case NVME_SC_SUCCESS:
 		return BLK_STS_OK;
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
