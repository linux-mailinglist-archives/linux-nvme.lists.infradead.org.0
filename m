Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2555948B
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 09:03:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASsJSp4vPe7Om1BYUQp161jLbbAVw/Fuz3cC291U0Po=; b=dLwI4igd8Ck+G3
	ob3KuvTU80JxJRv9SEfQ/WB7KUJ2blBwZ5PUT8MUiwQ94ohSBR9oadPdeSqgL7P+2WDpsh/wW5FsM
	f4DYA20UiuXBOHHDzjgjIl3ypmNiZwhwdTLjceYvPT45fYZfOb8xMzTmBmZCKR8qkD3+l3MA13ERT
	Sc6cVellj/TqqtYpGvPJGKMZIBpplFNMtTknoX1XchbKqdpqUTWEMuL6l2ZImOneR71M0hbCvE97Y
	BA54xxRFoC2BpaQtWPs7RvcafFZaAuZXJtRzK2BS7qTkO/FnKWhzmj4Mumxmrjj8HnNmLaTKlv3jW
	Xs0zNXr9lm1vP3kprEiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgkuX-0008Bu-TJ; Fri, 28 Jun 2019 07:03:06 +0000
Received: from [213.95.11.210] (helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgkuF-0008BS-42
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 07:02:48 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id D39A268D04; Fri, 28 Jun 2019 09:02:43 +0200 (CEST)
Date: Fri, 28 Jun 2019 09:02:43 +0200
From: Christoph Hellwig <hch@lst.de>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH v4 2/3] nvmet: Export NVMe namespace attributes
Message-ID: <20190628070243.GB28268@lst.de>
References: <20190627143215.27443-1-bvanassche@acm.org>
 <20190627143215.27443-3-bvanassche@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627143215.27443-3-bvanassche@acm.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_000247_435501_16A86D6F 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 07:32:14AM -0700, Bart Van Assche wrote:
> +/* Convert a 32-bit number to a 16-bit 0's based number */
> +static __le16 to0based(u32 a)
> +{
> +	return cpu_to_le16(max(1U, min(1U << 16, a)) - 1);
> +}

Maybe lift this to drivers/nvme/target/nvmet.h as an inline as it
might be generally useful for more thing in the future?

> +	/*
> +	 * For NVMe 1.4 and later, bit 4 indicates that the fields NPWG,

I'd drop the NVMe 1.4 as it is a bit pointless.  Also in NVMe you
can generally implement the TPs on older compliance levels (which is in
fact what we do here anyway).

> +void nvmet_file_set_limits(struct file *file, struct nvme_id_ns *id)
> +{
> +	/*
> +	 * Since the file backend uses buffered I/O and since the NVMe spec
> +	 * does not allow to report that atomic commands are not supported by
> +	 * a namespace, do not set any of the namespace specific atomic
> +	 * properties. This will cause the initiator to rely on the atomic
> +	 * properties reported by the controller. To do: discuss whether or
> +	 * not the file backend should use direct I/O instead of buffered I/O.
> +	 */
> +}

This function doesn't seem overly helpful to me.  Can we just skip
that whole function and the comment?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
