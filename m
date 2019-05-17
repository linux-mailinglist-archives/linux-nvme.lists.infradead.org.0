Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F30CB21D94
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 20:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BJp+RtTq7Mv6vLDFTwYJGuDwnBl+lo4SO5t6J5DgooU=; b=UMEznX4em1l4m1
	Gv4t7AvVmEQMqcAunuN7ktuQSqzKlTb8B68/RE46wnRJBsfv07lioCC0hXm+5sa/zib70PbnLcIEd
	FBxs43CDcP5uKtlSP2D02/huPzIRGmKWu5Vp02rJ6X7rQVi+XFo/FV223F1bIu+nCo0LWgP3WaL5V
	dB0nV8v3HrSjD08O/jiaqtfHY1rO5G5zH1dxonuHoSdGnR1KAuFO+pxukGO3N7tTaykHh2G9FTLJ3
	T03lXxMWyzsf1ynchTyhcxZRCxu7qT0wbRmKGDlLBY6y3Cxx/telo6/bu1FGN3OilRlP8VH3tiQDA
	KKQ3MJ5QAN3zPqIoP5zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhnS-0002dA-UL; Fri, 17 May 2019 18:41:34 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhnN-0002ct-Ke
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 18:41:30 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 11:41:28 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga003.jf.intel.com with ESMTP; 17 May 2019 11:41:28 -0700
Date: Fri, 17 May 2019 12:36:14 -0600
From: Keith Busch <kbusch@kernel.org>
To: David Milburn <dmilburn@redhat.com>
Subject: Re: [PATCH v2] nvme: fix memory leak for power latency tolerance req
Message-ID: <20190517183614.GB25092@localhost.localdomain>
References: <20190517023007.140656-1-yuyufen@huawei.com>
 <0becf386-c4f5-b0f9-2d5f-84da0e58226c@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0becf386-c4f5-b0f9-2d5f-84da0e58226c@redhat.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_114129_688399_F7B27B50 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, "luto@kernel.org" <luto@kernel.org>,
 "hch@lst.de" <hch@lst.de>, Yufen Yu <yuyufen@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 05:22:48AM -0700, David Milburn wrote:
> On 05/16/2019 09:30 PM, Yufen Yu wrote:
> >   void nvme_uninit_ctrl(struct nvme_ctrl *ctrl)
> >   {
> > +	dev_pm_qos_hide_latency_tolerance(ctrl->device);
> >   	cdev_device_del(&ctrl->cdev, ctrl->device);
> >   }
> >   EXPORT_SYMBOL_GPL(nvme_uninit_ctrl);
> > 
> 
> This one works too. Thanks
> 
> Tested-by: David Milburn <dmilburn@redhat.com>

Thanks, applied for 5.2

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
