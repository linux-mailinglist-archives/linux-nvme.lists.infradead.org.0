Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7B61FB6B1
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 17:41:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	References:Message-ID:From:Subject:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1PpZ8S2rZz+xeDznOa0FGMFufB6gYxm+NG1+KkzGJ3w=; b=aD0KyGxzhyMCWl
	877bkiIj8ATigCoF2xpV8qdg79b5TK+YmCLGFo4Piv9K9W4SYWRy8NcCJsjO1vKfXSa4U7Wrvq5Nx
	ABMv4ywuEMu1Js5gkCfV1Sd0XfBYsxS4jJ7/m5bwhoLbFvclNsCDhF0otGCLtGo7iuQhs6uxVU3Js
	zZ/ClVDe7e4IOIO5nD1q3ughJiKgUxVG5Z2uUApZEWfLGy2mKXbPtd95JS+kxy3cUdSna7L3ROFZA
	UDBeq4L+ac8m4U2821Rad95nTVeYEdg+umz/j6fUuxH8St2ob3I4jbdTmgtQxEenFWMphh6nM5DM+
	RYOxSPYwh05KZnaBXGWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDic-0007Jb-Ro; Tue, 16 Jun 2020 15:41:46 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDiY-0007Io-I0
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 15:41:43 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05GFbS2b087032;
 Tue, 16 Jun 2020 15:41:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : message-id : references : date : in-reply-to : mime-version :
 content-type; s=corp-2020-01-29;
 bh=x71oBn1m/tF2XvIfsUgElKRHW9e1eYOow3P3SFBORSg=;
 b=WGIapUiBpCyxlkBoDlt61JxsZxduNAh7fVJidJtdsvoZ3HdFLhPvHzSoSOc6TmmCUCN+
 buOgpTw4hgWXgcEO/X6M1SmsNObrbyYDZ+lMRghnYxieHUkZKczO396NYsUANV5M/4+w
 dbWg71YvdDStIX+3FcEuekdlTm0dua7Mi+GYZ3K5QQEozwAxXZ1LEt/qB3OFtVJ+J/Ci
 eZOop1VVqk3GvcWAbaxASUgn0n4iGGbkDps1kBGM14D3sIudk1BULhTUmsAWWCxYS+IA
 fMQ5h7s2/cXUwmtvsFpqENb9KNSa7enjvI4OF37M5UrhAN3ajM7bLKiq7dEIkhOmt6LC 3A== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 31p6e5yjjf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jun 2020 15:41:26 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05GFd6ch046602;
 Tue, 16 Jun 2020 15:41:25 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 31p6s7d9b1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Jun 2020 15:41:25 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05GFfO13030328;
 Tue, 16 Jun 2020 15:41:24 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Jun 2020 08:41:24 -0700
To: Keith Busch <keith.busch@wdc.com>
Subject: Re: [PATCH 1/5] block: add capacity field to zone descriptors
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1sgevm31m.fsf@ca-mkp.ca.oracle.com>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-2-keith.busch@wdc.com>
Date: Tue, 16 Jun 2020 11:41:21 -0400
In-Reply-To: <20200615233424.13458-2-keith.busch@wdc.com> (Keith Busch's
 message of "Tue, 16 Jun 2020 08:34:20 +0900")
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 mlxscore=0
 suspectscore=1 mlxlogscore=999 phishscore=0 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006160110
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 adultscore=0
 mlxscore=0 phishscore=0 mlxlogscore=999 lowpriorityscore=0 clxscore=1011
 suspectscore=1 spamscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006160110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_084142_682194_D3C80D09 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <damien.lemoal@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Matias =?utf-8?Q?Bj=C3=B8rling?= <matias.bjorling@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Keith,

> In the zoned storage model, the sectors within a zone are typically
> all writeable. With the introduction of the Zoned Namespace (ZNS)
> Command Set in the NVM Express organization, the model was extended to
> have a specific writeable capacity.
>
> Extend the zone descriptor data structure with a zone capacity field to
> indicate to the user how many sectors in a zone are writeable.
>
> Introduce backward compatibility in the zone report ioctl by extending
> the zone report header data structure with a flags field to indicate if
> the capacity field is available.

Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
