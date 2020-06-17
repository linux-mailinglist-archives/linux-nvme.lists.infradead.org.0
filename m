Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B69F1FC3F3
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jun 2020 04:02:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	References:Message-ID:From:Subject:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YthIeRLpHIfnS88mqgnjchQw3+j4r2iz5Z3rqW7m1Ew=; b=lTJqXtFFQ2Bk+3
	Np8tEJN/F5RS1hN5nphyC3kAF2igj1FaGPDZTbPNHKDaAaffXi0XeO7Xmp1+rGzjU4mO+yW2gKVjs
	SqSHIbPUavSpvbK85uzbNIyk9rqXLuU5bCAlyCWJ5P0d3vW4OqJXBuUedUKIHjToPz9yPtzylw4NO
	cQGcZolDGdnCxmjgCXstf10tnr616RLYPTQLivNNJOf/ZjNBvEsbBDbCFW8exdeSYRv3IVXkJaZhA
	Q4TBrvukSy9kypqyPDH/ov/Mhsn2D7/EPPwTswPJBWqlRfR2fxZj6ftgl7mk/Afv7kJrObhNbQHnC
	YblPgZ0/tZcbrXkfJMZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlNOm-0008AX-GK; Wed, 17 Jun 2020 02:01:56 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlNOi-0008AB-3C
 for linux-nvme@lists.infradead.org; Wed, 17 Jun 2020 02:01:53 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05H1vjlu082195;
 Wed, 17 Jun 2020 02:01:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : message-id : references : date : in-reply-to : mime-version :
 content-type; s=corp-2020-01-29;
 bh=P6n90haX3wMwqEFit+wXP2CZ58I0PaaDATVvkPo5s6A=;
 b=BS4XpOynpHuW1ixQ8SB6BAJlq1oN1v9aiBoAW6b4So1R5Sj9w3RATpmm9mm6MVAifn3S
 AhqwpU1JJ1mafHOgHxNEoSLMLfb7mB6aJhzhnOHAlx8YNQU/N0i0J+KAPOJYVYyLTsDe
 v1e7GdiHKV2rCU74JPEbUKw4UpQIax9IkqC0ZQJm8Tl696b9U0xszSxd1MyZomZer4X4
 qO7BsLZHKLV5rl2txnRONnduVQ6sfYuyhzMjqIHRsB0PoPr6k7AHfIMpsF9OnnYOURqj
 TdQGLVWmD9gvhgeZQDMrvbo+8IVbM/0wF7Vx39y3ic2I2mlWZfjrf7utOoHskGy2HW0i TQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 31q65yrkvj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 17 Jun 2020 02:01:41 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05H1wCJO166264;
 Wed, 17 Jun 2020 02:01:41 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 31q667umju-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jun 2020 02:01:41 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05H21cPK011350;
 Wed, 17 Jun 2020 02:01:39 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Jun 2020 19:01:38 -0700
To: Niklas Cassel <Niklas.Cassel@wdc.com>
Subject: Re: [PATCH 3/5] nvme: implement I/O Command Sets Command Set support
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1pn9ylaxl.fsf@ca-mkp.ca.oracle.com>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-4-keith.busch@wdc.com>
 <yq1ftavm29u.fsf@ca-mkp.ca.oracle.com>
 <20200616170607.GA507534@localhost.localdomain>
Date: Tue, 16 Jun 2020 22:01:35 -0400
In-Reply-To: <20200616170607.GA507534@localhost.localdomain> (Niklas Cassel's
 message of "Tue, 16 Jun 2020 17:06:08 +0000")
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 malwarescore=0
 suspectscore=1 bulkscore=0 adultscore=0 mlxlogscore=783 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006170014
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 malwarescore=0
 bulkscore=0 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 clxscore=1015 mlxlogscore=804 suspectscore=1 impostorscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006170014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_190152_221069_1CB7CCF3 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <Damien.LeMoal@wdc.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Keith Busch <Keith.Busch@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>, Matias Bjorling <Matias.Bjorling@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Niklas,

> This function, nvme_identify_ns_descs(), was previously only
> called if (ctrl->vs >= NVME_VS(1, 3, 0)).
>
> Now it's called if (ctrl->vs >= NVME_VS(1, 3, 0) || nvme_multi_css(ctrl))

OK, that's fine, then.

> Someone could send NVMe format commands directly to the drive, using
> e.g. nvme-cli to format a specific NSID, using a different CSI than
> that NSID previously used.
>
> In that case, the same NSID will now have another main CSI
> associated, so it probably makes sense for revalidate disk to
> detect that it is no longer the same disk.

Fair enough. I hadn't considered the format nvm case.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
