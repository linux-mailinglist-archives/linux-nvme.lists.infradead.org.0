Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 008141D40BA
	for <lists+linux-nvme@lfdr.de>; Fri, 15 May 2020 00:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqx/sbDs7ZVAmo/DJGZOPyL3tqALgoWXhaS6wuulyxI=; b=MV/ZjZBXuB9OY2
	1Wrpv24qNzP1McJnqUAsSQWrSbs1R3tyEatNXPr4cprSz9TD0AvFbWyejYBkrSG1w5PC52rx4T7WE
	idVdhmC5yU3RM6UTT4RWkw2LOvIuS6qUX5ftXteSqlv4nzg4p6jhM1merCyOsrkAiluuOV0XVuGLl
	35GOFVMiN8eUPipcsQxNkxoIhul2/tWSIQXQLK+iNeHfalpYP+9UT19TgyA3BZFTX2ntA89mY+QBW
	I6utyLIOIPnKBl1a5yP/XHCRDMG4lOVct7dNQWTXZ+9H0UMVHfqqDTakBNU8RaVr9zyXIQV0FL0WP
	oUQnLHG8Kw5ntNNfHXcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZMD3-00061B-Qg; Thu, 14 May 2020 22:20:09 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZMCv-0005Ny-N3
 for linux-nvme@lists.infradead.org; Thu, 14 May 2020 22:20:03 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04EMCW2e068482;
 Thu, 14 May 2020 22:19:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2020-01-29;
 bh=dAWOxAMXOUS93j/PBYmGNlYGgOcQYNiAdTu4Myfy1oA=;
 b=XT/8LAMR3DZ5vcDVZkaxMZRvOobB0I29QLWx12HxrHHFKgSfxEgiYvzvqBem5+P0ZzHi
 /W7bdT3QOkEWs4NkByevnQKsT4r/hPPiz0UYTEJJqmv4mBO0HBFBzSc/Ae+cSgueMUsV
 sG79aVmfS9fFWcp+hIWosOFmJ/W6G36PA1n8tXpDr0K7TPJF7bU8GfUd+hOYElq4Zyv3
 iWpCD4kZNJ9bvHhmb8tKGXz1eq0cYSoBllMTSjRZ7x1i7eKXKpYhIPNdITQ7sDGDkNWx
 4Uc2cK2VxJrHwL+Y5qR6NVMHyxzbqPFYhbR3FyCj+vam3tSWCKX78TzJi+2V92kcLZK1 Dw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 3100yg5ers-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 14 May 2020 22:19:39 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04EM8hp8093183;
 Thu, 14 May 2020 22:19:38 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 3100yq659w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 14 May 2020 22:19:38 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04EMJZoF019069;
 Thu, 14 May 2020 22:19:37 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 14 May 2020 15:19:35 -0700
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH] nvme: Fix io_opt limit setting
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200514015452.1055278-1-damien.lemoal@wdc.com>
 <fed0df8c-3005-fbdd-c413-06fd7d174dee@acm.org>
Date: Thu, 14 May 2020 18:19:33 -0400
In-Reply-To: <fed0df8c-3005-fbdd-c413-06fd7d174dee@acm.org> (Bart Van Assche's
 message of "Wed, 13 May 2020 21:47:16 -0700")
Message-ID: <yq13682upl6.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.91 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9621
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=590
 adultscore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005140194
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9621
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 adultscore=0
 cotscore=-2147483648 mlxscore=0 suspectscore=0 spamscore=0 impostorscore=0
 mlxlogscore=619 malwarescore=0 clxscore=1015 phishscore=0 bulkscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005140194
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_152001_838329_754C168A 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <damien.lemoal@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Bart,

> The above change looks confusing to me. We want the NVMe driver to set
> io_opt, so why only call blk_queue_io_opt() if io_opt != 0? That means
> that the io_opt value will be left to any value set by the block layer
> core if io_opt == 0 instead of properly being set to zero.

We do explicitly set it to 0 when allocating a queue. But no biggie.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
