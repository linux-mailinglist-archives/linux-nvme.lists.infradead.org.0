Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3680220E2
	for <lists+linux-nvme@lfdr.de>; Sat, 18 May 2019 02:22:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7nGCtu4p42kiD5VcjxusQ0Bt18bLHiexTd784o9hlzU=; b=ixFmjiOEisdu8T
	0GvpIgpa8F29f4Sr9zdACYCfL/Ef1ehSv6pZffytxNbVN49IBq+sG16izCwFS+ppZRbl+kRUHo9/z
	fSop6Cdoy+zUnYTzlmR/EFbI8TqKhqt9z/ZVi7n2gjkClUrmjhKyzD/4M3/naiROUf+3qlCbOEMpg
	ZxWXH7v10qO1T4Tr9W5rNKOjf7G7i2BVC5z+1dvEWr7sNo1ZPgiX5VfGqibV/nfcLgKSD7W2fClzm
	Ma2hCwdthfsRSL1Tv57F0ezd7+wS6H/KCUFWwDfxeA8jfbp8ifQU2kD+e3a6dkqwyYhuJmnT3gecU
	Jg3tNcMyhVbmn3Hy+B3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRn6p-0000K6-7P; Sat, 18 May 2019 00:21:55 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRn6j-0000Jm-8W
 for linux-nvme@lists.infradead.org; Sat, 18 May 2019 00:21:50 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4I06Eid019505; Fri, 17 May 2019 17:21:40 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=pfpt0818; bh=TLHhUpPk7KTsRbgfg/D02iB/kv94CNcmrcCN2wRQ94Q=;
 b=xZeBUoKbkrQUCOk2jjrcXkTX48ak4/HqGmm9pwSTNSHdO8umnW1SCb0YkorppSYrluG6
 GcF8X7BwnZ6zIiKrs/l0NCOHXgt6vnUdtHOMGeKyMOPOoFbj/8vaUsf4Bd1vYfPyg5/Z
 4r+W3qfVDY7y+ZzSSDR0Z6rzbKIgD0bGLf5BfDOL9oKxXAr6FlAEIO4VhAeSLu0Uvlzp
 jVvqxmAZagtj5Ttqi37WehIFxC2OOUpd8JvXW7jCHxLFcEIGIVA94XfgWclKLvJviRlE
 2Ws0RjvX70sDlLoO30Fa90n8HSE5u88iFKPouaEYokxDtNQCngTkJTseRdoOqyXL9hB9 ig== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0b-0016f401.pphosted.com with ESMTP id 2shv92jydx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 17 May 2019 17:21:40 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 17 May
 2019 17:21:39 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Fri, 17 May 2019 17:21:39 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id E9F9C3F703F;
 Fri, 17 May 2019 17:21:38 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x4I0LcUx017639;
 Fri, 17 May 2019 17:21:38 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Fri, 17 May 2019 17:21:38 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 3/3] nvme-fc: fail reconnect if state change fails
In-Reply-To: <alpine.LRH.2.21.9999.1905171715520.19585@mvluser05.qlc.com>
Message-ID: <alpine.LRH.2.21.9999.1905171721040.9636@mvluser05.qlc.com>
References: <20190516083740.95894-1-hare@suse.de>
 <20190516083740.95894-4-hare@suse.de>
 <alpine.LRH.2.21.9999.1905171715520.19585@mvluser05.qlc.com>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-17_15:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_172149_420917_263AD42C 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Please ignore the comment. I see that v2 already has addressed this.

Regards,
-Arun

On Fri, 17 May 2019, 5:18pm, Arun Easi wrote:

> On Thu, 16 May 2019, 1:37am, Hannes Reinecke wrote:
> 
> > If the final state change to LIVE in nvme_fc_create_association()
> > fails the controller is not operational as no I/O is possible.
> > So we should be returning an error here to reschedule reconnect.
> > 
> > Signed-off-by: Hannes Reinecke <hare@suse.com>
> > ---
> >  drivers/nvme/host/fc.c | 14 ++++++++++----
> >  1 file changed, 10 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> > index e5c81ba2b7a1..9f9300cbdb62 100644
> > --- a/drivers/nvme/host/fc.c
> > +++ b/drivers/nvme/host/fc.c
> > @@ -2620,7 +2620,6 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
> >  {
> >  	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
> >  	int ret;
> > -	bool changed;
> >  
> >  	++ctrl->ctrl.nr_reconnects;
> >  
> > @@ -2725,12 +2724,19 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
> >  			goto out_term_aen_ops;
> >  	}
> >  
> > -	changed = nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_LIVE);
> > +	if (nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_LIVE)) {
> 
> Should not this be !nvme_change_ctrl_state()?
> 
> Regards,
> -Arun
> > +		if (ctrl->ctrl.state != NVME_CTRL_DELETING) {
> > +			dev_err(ctrl->ctrl.device,
> > +				"NVME-FC{%d}: error_recovery: Couldn't change "
> > +				"state from %s to LIVE\n", ctrl->cnum,
> > +				nvme_ctrl_state_name(&ctrl->ctrl));
> > +			return -EAGAIN;
> > +		}
> > +	}
> >  
> >  	ctrl->ctrl.nr_reconnects = 0;
> >  
> > -	if (changed)
> > -		nvme_start_ctrl(&ctrl->ctrl);
> > +	nvme_start_ctrl(&ctrl->ctrl);
> >  
> >  	return 0;	/* Success */
> >  
> > 
> 
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
