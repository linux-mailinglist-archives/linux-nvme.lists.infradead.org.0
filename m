Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E6238EEB
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 17:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INw883WAI0P0KuBOMhpGmZkQ+XjlE0sb4yMegdlLj1k=; b=g6XDeSTEYyMwL2
	TJzvmFsWPW514SwcxQd4wgY0/OnHrrPhN+AavNLOEGpp5wFAqbYE0+r9ZTwZlJOX0HjGjR2i5ZVtn
	L4Xmcz5rfBRYnYxMG7CDhpS0Y2D5l2lECRKAjTZT41eXul4/ar8YiKPLmmrBVrgk0wQi4AjUn9CIU
	jBcdMipEmPJlRXzzw3vOHc0Fk1wq9tRCGCQoVmqy0P9ZwiCEKjqcJhAHlQ7F7GOCo+UlBZYr97EOj
	88QHTch2dKNW0cV7wl2YT/IoPHHQtI55uDWw1AGeRRYMsIhYkaLHrTFqS8Q+kRoFKLv8ehsuXO055
	revI51SvcgDlOhskY1Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGjQ-0005JH-FL; Fri, 07 Jun 2019 15:24:40 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGjI-0005G7-Pe
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 15:24:34 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x57FIlWt065340;
 Fri, 7 Jun 2019 15:19:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2018-07-02;
 bh=SNoDmE45O2gacivqUX8a+kPdsDjLtKcPjgAofP6XGQc=;
 b=O2/SRYytz+mr71mt1vLQ07yEaA1GKA32XsB1CaLWPN1E8eI+wBmcS9GijW0DF/h8hHzk
 N0zaqLmtkzB9hZdBDWfBbyOn2xfIiAs4kWGPmZxXe2Zv/X4NFsrRWWQgle3pR9c/gmi4
 mS0l1cVHW9yxodsH750W3fNL3xhK7RKnAlqn34FJiTxKNs+5xc49n1mpiDUFUdzGDTRz
 /hY+LbYmZ2qnCgoSUCqQUcCLRfICHDQP7yEU0jI0Whs9Pq/zvCRTmE6qQtqxaUP8SNJE
 IwH1EOxozQKBB4CJ1bpriKoAZP8yiPkGZS+mmRm+AlUV2ELa8M51WZoQlKDGKEtS3nH7 bQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2sugstxw1p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Jun 2019 15:19:52 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x57FIc1I031828;
 Fri, 7 Jun 2019 15:19:52 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2swnhbcqd1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Jun 2019 15:19:52 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x57FJn6n024861;
 Fri, 7 Jun 2019 15:19:50 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 07 Jun 2019 08:19:49 -0700
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH 2/2] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20190606212854.122478-1-bvanassche@acm.org>
 <20190606212854.122478-3-bvanassche@acm.org>
Date: Fri, 07 Jun 2019 11:19:47 -0400
In-Reply-To: <20190606212854.122478-3-bvanassche@acm.org> (Bart Van Assche's
 message of "Thu, 6 Jun 2019 14:28:54 -0700")
Message-ID: <yq1ef45jucs.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9280
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=899
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906070107
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9280
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=945 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906070107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_082432_925172_BA7DD362 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Bart,

> +	phys_bs = bs;
> +	io_opt = bs;
> +	if (id->nsfeat & (1 << 4)) {
> +		/* NPWG = Namespace Preferred Write Granularity */
> +		phys_bs *= 1 + le16_to_cpu(id->npwg);
> +		/* NOWS = Namespace Optimal Write Size */
> +		io_opt *= 1 + le16_to_cpu(id->nows);
> +	}
>  	blk_queue_logical_block_size(disk->queue, bs);
> -	blk_queue_physical_block_size(disk->queue, bs);
> -	blk_queue_io_min(disk->queue, bs);
> +	blk_queue_physical_block_size(disk->queue, phys_bs);
> +	blk_queue_io_min(disk->queue, phys_bs);
> +	blk_queue_io_opt(disk->queue, io_opt);
>  
>  	if (ns->ms && !ns->ext &&
>  	    (ns->ctrl->ops->flags & NVME_F_METADATA_SUPPORTED))

Also fine. Nice to get these wired up!

Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
