Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D0E7322E
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 16:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aWBdaNBAoxbW/dgF6qp4zdmqKhuI3/gt/PpfvmSNt8Q=; b=OKXCdmQhVgMozf
	TpHpNvKIPja/hSFRVWtLaYD+t3OPu9FjrAYVuuyYLXSNsRUeiE3Xq2Fv/RE4Es0ENhR4FdwEWp22H
	whcEDCOpS4MGsQHnDKPxHa79W2xEvO6FEGpKBOUSLadONK9b4qbCjqjbYi/5WkoEcM28PJrrncTf5
	EuFj6gZ6BFGV+HKQ4//QfjB/d5ID+stPL/35QyiWmVNWtpPoP1MuTQJEM+1/s7LRlDfRTB3Bb1Vu1
	W0fGZHgNab+Xsys5rr1JrRF/pdDvARR8Y5+zB+uTlWkbUm1CkZk69e3dUm7QZ5Cp/C3JrkF4v6L2i
	NOA+YJUeC7iFuP13A/Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqIcS-0004XV-MW; Wed, 24 Jul 2019 14:51:52 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqIcN-0004X0-6E
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 14:51:48 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6OEmkRv088334
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 14:51:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : content-type :
 content-transfer-encoding : mime-version : subject : message-id : date :
 to; s=corp-2018-07-02; bh=hQa2lUT2EOhJ5Fn0wiut5TLlOOJ3t57P6m+HcL1I1Bo=;
 b=WWUtlyJWnoFxa0ZXP84IF41WoZyWvGo8qPgrS5v2m9uWziIlSl0AGAHslErUy9aVqBAQ
 3p2p88N3KSCqTs64aBRpyyJg8pKDgoZTaU2w3MQB8H1HVbvzBaJPY1E2H4pOt51gGWP6
 fnj+pADcwhIdUOOL9LTjvuV2V0AZYdihtZPkiNxAgzmNOPLFRsWE7s13j1cP3+GKchOL
 EFBoRD+tUQ/vA/g/D8ASGh1JGUFJjvJXjnH3tgWDhipGPLT1ED3zJW6prJp5uGIeyiUE
 JkHQnHL1zw4wJKHVADYvlCtaTvpQPG0fOB2niDICMB6h2ICKB4rG+pNFjWTSWBVRnit2 OA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2tx61bwybf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 14:51:38 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6OEmTx1166322
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 14:51:38 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2tx60xs4yx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 14:51:38 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x6OEpbZq005505
 for <linux-nvme@lists.infradead.org>; Wed, 24 Jul 2019 14:51:38 GMT
Received: from dhcp-10-154-107-10.vpn.oracle.com (/10.154.107.10)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 24 Jul 2019 07:51:37 -0700
From: John Donnelly <john.p.donnelly@oracle.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: nvme statistics :  iostat vs  sar 
Message-Id: <D4F9A3CB-489A-4946-ADF2-C7C17A21E076@oracle.com>
Date: Wed, 24 Jul 2019 09:51:36 -0500
To: linux-nvme@lists.infradead.org
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9327
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=5
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=695
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1907240166
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9327
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=5 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=737 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1907240166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_075147_325194_9B29C284 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

I noticed  nvme I/O  does not appear  in sar disk data (-d ) ,  but it does appear with  sar block (-b)  and iostat.

Is this expected ?

sar -d 


07:49:47 AM       DEV       tps  rd_sec/s  wr_sec/s  avgrq-sz  avgqu-sz     await     svctm     %util
07:49:49 AM   dev8-32      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
07:49:49 AM   dev8-16      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
07:49:49 AM   dev8-48      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
07:49:49 AM    dev8-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
07:49:49 AM  dev259-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
07:49:49 AM  dev252-0      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
07:49:49 AM  dev252-1      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00
07:49:49 AM  dev252-2      0.00      0.00      0.00      0.00      0.00      0.00      0.00      0.00



sar -b   2 2 

07:47:35 AM       tps      rtps      wtps   bread/s   bwrtn/s
07:47:37 AM    792.50    395.50    397.00  25312.00  25316.00
07:47:39 AM    796.50    394.00    402.50  25216.00  25760.00
Average:       794.50    394.75    399.75  25264.00  25538.00



iostat:


avg-cpu:  %user   %nice %system %iowait  %steal   %idle
           0.05    0.00    0.33    0.33    0.00   99.29

Device:            tps    kB_read/s    kB_wrtn/s    kB_read    kB_wrtn
sdc               0.07         2.43         0.00       6295          0
sdb               0.07         2.43         0.00       6295          0
sdd               0.07         2.43         0.00       6295          0
sda               6.07       117.40        21.34     303739      55202
nvme0n1           0.48        15.18         0.00      39283          0
dm-0              5.60       103.39        19.45     267499      50321
dm-1              0.03         0.95         0.00       2460          0
dm-2              0.23         1.40         0.79       3617       2048
nvme1c1n1       284.39      3011.48      2814.17    7791448    7280960
nvme1c1n2        96.70       756.17       750.80    1956388    1942520
nvme1c3n2         0.00         0.00         0.00          0          0
nvme1c2n2        60.15       962.11       962.63    2489220    2490560
nvme1c4n2         0.00         0.00         0.00          0          0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
