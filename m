Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F8E1D40C5
	for <lists+linux-nvme@lfdr.de>; Fri, 15 May 2020 00:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4sblJRj3qOu3lQhtUrN3zWkyr3yWOFlJ0IbSO/gGMk=; b=gdkHu7HhYmQl6c
	IDJ/9z+odDzJvz66dRvUTvnG0wr75vzAYQWxIpj5KyW+w9/gmLS0kmUQT/lpYj3QPbzeb6pWera1T
	aqyIxJ/yyhLYhbyuijZ6X7Su/96rSVSrYTR7MMf5lYBZaOsk4rhbRIGjsrrUEOhKx+PKMcpdAbbbO
	w0LcV2fPOhSfdJUzV+qJM0BEwyPAP/ghLAOJS8w3az2lpw9PqpQEJdPI2XBFPaaGr0bjxcdhXc8Rs
	krVi1napoQLK0MfxCO5Qqk3LTqvqSvGN0kip8ELymScZTmKVXFZK0+Eq8x5JGCq5pv1Xi2H+DZU0w
	b66nueyDgml3rUZWdymA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZMDu-00083m-69; Thu, 14 May 2020 22:21:02 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZMDo-00083N-Ow
 for linux-nvme@lists.infradead.org; Thu, 14 May 2020 22:20:58 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04EMDPaj188743;
 Thu, 14 May 2020 22:20:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2020-01-29;
 bh=iXu1nAFus4sTDwZffcA0m9B08Spv91nPDCqcGwihypw=;
 b=q+V+vcDxWOfUqLFY4dRflM0pbKUmHivvaaYcOFJgK6eM/H88f0og65w03PyOdqT0w4A7
 x+cb4XGkw6UECz8elS+sx91a3LfmP7ojHfO8yhP6W+K0Yvrk+mrOE9FHH3gp6GW6Oac1
 vHKSu8muKTggqwjPVvpl6f5KIKrocK6cuhSFk/CPxnwSbylUifT3JPMiUZvaTP+vUb0C
 eOyNkX7KsboJg02cQU8sKdnNFtDAvWxlSc/qvCWn+dVoCWS24IFHNyRNvuEJRIjGasfv
 jSessfw/438JEhTx0nvOuxalbtue6LJhwGTi4xgHLi5827jYNeF/+WX7Pv+nXsWGYdLn aw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 3100xwwetw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 14 May 2020 22:20:52 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04EM8hOp067934;
 Thu, 14 May 2020 22:20:51 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 310vju293d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 14 May 2020 22:20:51 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04EMKo5H002141;
 Thu, 14 May 2020 22:20:50 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 14 May 2020 15:20:49 -0700
To: Damien Le Moal <damien.lemoal@wdc.com>
Subject: Re: [PATCH v2] nvme: Fix io_opt limit setting
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200514055626.1111729-1-damien.lemoal@wdc.com>
Date: Thu, 14 May 2020 18:20:47 -0400
In-Reply-To: <20200514055626.1111729-1-damien.lemoal@wdc.com> (Damien Le
 Moal's message of "Thu, 14 May 2020 14:56:26 +0900")
Message-ID: <yq1y2putayo.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.91 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9621
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 phishscore=0
 spamscore=0 mlxlogscore=971 malwarescore=0 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005140194
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9621
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 cotscore=-2147483648 bulkscore=0
 phishscore=0 adultscore=0 mlxlogscore=999 lowpriorityscore=0
 impostorscore=0 spamscore=0 malwarescore=0 priorityscore=1501 mlxscore=0
 suspectscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005140194
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_152056_893877_C38F9E5B 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Damien,

> Fix this by not setting the optimal IO size queue limit if the
> namespace does not report an optimal write size value.

I'm also OK with this approach.

Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
