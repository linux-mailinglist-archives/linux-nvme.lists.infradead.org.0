Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5691F4C504
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 03:37:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3WCWqxN0zkNu4hphBKl0lxcYtRYR6UeZOl2jMqkdMI=; b=OrZjn/ZsXVdIqK
	CWCYbX8AtSczFhi3MQiBTh5QmccxDi85SgqqWdOiIz2FqtUObdZQ4ia+Rcbl6NRWQaCfdT8VNRUWI
	Dj/TjJzd3e0LCk9Sj5U2gxtXMvNJfsU6Zk2tFC5hmlx8tWYNnmIVmqIwls9BAePYX9Vtyp5w4UhZV
	4SwhLPAtKMXyBo5ky5HeTEv7XGZ341NFHFKUvOOWVBEKyEm7ubsUiydRqbk7RqZ6p+i+61ygI00WU
	13j77AD38TDLfwvU4LOii6/DhZFkq7b6sJYZOng9Cwss6mez3Boq1NKM6ynetHDRylztTKUTwqij/
	Fw7DcsuzLqfo/WlQHKKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdm0j-0004Ia-R7; Thu, 20 Jun 2019 01:37:09 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdm0c-0004IE-TD
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 01:37:04 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0A8EC3001A66;
 Thu, 20 Jun 2019 01:37:02 +0000 (UTC)
Received: from ming.t460p (ovpn-8-22.pek2.redhat.com [10.72.8.22])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DAA35C207;
 Thu, 20 Jun 2019 01:36:55 +0000 (UTC)
Date: Thu, 20 Jun 2019 09:36:51 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 2/2] nvme: flush scan_work when resetting controller
Message-ID: <20190620013650.GB31179@ming.t460p>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-3-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618101025.78840-3-hare@suse.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Thu, 20 Jun 2019 01:37:02 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_183702_966451_08EEE964 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 12:10:25PM +0200, Hannes Reinecke wrote:
> When resetting the controller there is no point whatsoever to
> have a scan run in parallel; we cannot access the controller and

scan won't be run in parallel, because .scan_work is embedded in
'struct nvme_ctrl' which is per-HBA.

> we cannot tell which devices are present and which not.
> Additionally we'll run a scan after reset anyway.
> So flush existing scans before reconnecting, ensuring to
> short-circuit the scan workqueue function if the controller state
> isn't live to avoid lockups.

This way may cause dead-lock.

1) nvme_revalidate_disk() might freeze queue in flush context, however
any in-flight requests won't be completed until reset is done, so
deadlock may be caused by flushing scans in reset context.

2) sync IO may be involved in revalidate_disk() which is called in
scan context, so deadlock is caused for same reason with 1).


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
