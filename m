Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCA0AD208
	for <lists+linux-nvme@lfdr.de>; Mon,  9 Sep 2019 04:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QuXQu9PCmuOi2Oxa8kmwVqBH46JrjPB3VF6gW22fJA=; b=ZN1rX0vNh09Md6
	lkwdceLLLYn1vZ9otx2Bahgqg6mmBXEWVy8lpDXo28fWL+TR6Dj3yeMyrFjDqAm5JuzTbNCqUhNOF
	l/0MFTYztgIobLeBpUathAcCmmuoacC8k3MppsySMQJmIcoFOkEUeslGuvJnbxmFmU3twSuYj0wk5
	mIOGAPDThGNTv9s2cvupF3VZoICH4kS5zt6eyrC0GF8ouEsvM+T1R2dTjIUm1zKMWlkCR9Xu0Kvqe
	mI8ahKYBdzaZK/qvLX38gdPGi/k1/t6C4dJ/u2OGzaNxyr6PjyV4Yh/Ge/zgSW8WpHtD5rTAtP3WV
	SjlNR/oHirF2c/c55tKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i79k5-0006lf-Sf; Mon, 09 Sep 2019 02:49:26 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i79jw-0006lJ-Uk
 for linux-nvme@lists.infradead.org; Mon, 09 Sep 2019 02:49:18 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x892iUCM114038;
 Mon, 9 Sep 2019 02:49:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=4MN8jJzoNciSq/uZgMjvZeXOoEJlNQnAC2ubMM68AYY=;
 b=IS9Lj8bRziQ/xr52QlYlkf4YZpEEB7Xig0vdOjhSyYJC1aoEcARJDpX2A418aNoN4LkU
 7VF4HWud9m5DRByR6ngLJ9DVZdwdqKQll6oswKKZnEeZ60TePchkz2W01M7NjCMYfcRM
 l3o9YfC6FIi4YBSYLI8/4iHmTkuxdR73+F+QDYX22iHPGlg3tmcCItVKdF+114PfKkTQ
 UCTbQZ6ScKueXRY9kdbzN5YxaI3sMqLQoluZRZ5bmV3YbIFT7tOyID915pHS/S/5gowC
 YKKNEMGI2SWjp4Yf4RJB4082ayASgn60GWnVnticXnLR7Y9Ri3imfrF8Fi7jOsr/PP5z 7g== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2uw1jk19d1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 09 Sep 2019 02:49:05 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x892mol9033636;
 Mon, 9 Sep 2019 02:49:04 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2uv3wkwpv8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 09 Sep 2019 02:49:04 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x892n3gm012458;
 Mon, 9 Sep 2019 02:49:03 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sun, 08 Sep 2019 19:49:03 -0700
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH v4 2/3] block: don't remap ref tag for T10 PI type 0
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <1567956405-5585-1-git-send-email-maxg@mellanox.com>
 <1567956405-5585-2-git-send-email-maxg@mellanox.com>
 <yq1ftl6i4xx.fsf@oracle.com> <20190909023601.GA6772@keith-busch>
Date: Sun, 08 Sep 2019 22:49:00 -0400
In-Reply-To: <20190909023601.GA6772@keith-busch> (Keith Busch's message of
 "Sun, 8 Sep 2019 20:36:02 -0600")
Message-ID: <yq136h6i3qb.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9374
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=753
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909090029
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9374
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=816 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909090029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_194917_082558_CD0CE663 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: axboe@kernel.dk, linux-block@vger.kernel.org, sagi@grimberg.me,
 "Martin K. Petersen" <martin.petersen@oracle.com>, israelr@mellanox.com,
 linux-nvme@lists.infradead.org, keith.busch@intel.com, shlomin@mellanox.com,
 Max Gurtovoy <maxg@mellanox.com>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Keith,

> At least for nvme, type 0 means you have meta data but not for
> protection information,

Yeah, NVMe does not support DIX Type 0.

> so remapping the place the where reference tag exists for other PI
> types corrupts the metadata.

But the device shouldn't have an integrity profile in that case (see
previous mail about why keying off of the protection_type is a problem).

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
