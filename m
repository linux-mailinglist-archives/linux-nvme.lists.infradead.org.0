Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F85DC099
	for <lists+linux-nvme@lfdr.de>; Fri, 18 Oct 2019 11:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9es4DbW24elPMp328Bg7vY/vODxFYUcMIAA5RbTFxbY=; b=DRCXVo58lQMich
	HJwOPDNg0bfTWHujINrTMUnAR6zGEmejAWtaE2COsIOGgzOaeXErXnpj1sjORKvPD+hKfRN9EMlsK
	g74c/zfnmxVIDyVk1q3CZMQrjhujVEgfdTPsHU7Z5nZB0HufVffBrEw74pgxOTr4qWlc5nzt9lDFX
	xWC83ilXTkPx4V4kGzB/nRTqqMqVnCO5QuYEHiLxMiHlfKuuQZqaCdVIfw9mOe9UGxzIZsaTZ4O8S
	PehdwsnTjj1wvB/ho97kU+nY4mEueDj7JVjjrKy+UVnHPZKE2sOn9E2jvs0UDa8vWIvfvoW02Vq9j
	/fBalQ3JOAuvUGytf5GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOHC-000856-0J; Fri, 18 Oct 2019 09:10:26 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOH7-00084P-1D
 for linux-nvme@lists.infradead.org; Fri, 18 Oct 2019 09:10:22 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id BA1F768BE1; Fri, 18 Oct 2019 11:10:16 +0200 (CEST)
Date: Fri, 18 Oct 2019 11:10:16 +0200
From: Christoph Hellwig <hch@lst.de>
To: Anton Eidelman <anton@lightbitslabs.com>
Subject: Re: [PATCH] nvme-multipath: fix possible io hang after ctrl reconnect
Message-ID: <20191018091016.GA25478@lst.de>
References: <20191017152241.GA9155@lst.de>
 <20191017181142.28524-1-anton@lightbitslabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017181142.28524-1-anton@lightbitslabs.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_021021_231665_701AB126 
X-CRM114-Status: UNSURE (   9.04  )
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
Cc: keith.busch@intel.com, hare@suse.de, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 11:11:42AM -0700, Anton Eidelman wrote:
> As far as I can see nvme_init_identify() is called from
> nvme_xxx_configure_admin_queue() in tcp.c as well as in rdma.c
> regardless of the value of "new".
> This makes sense as over reconnect things in the identify might change
> for a dynamic controller, e.g. the cntlid.

True.  I guess the patch is fine, but please remove the now dead
groups_only code.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
