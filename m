Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4067F1E1A62
	for <lists+linux-nvme@lfdr.de>; Tue, 26 May 2020 06:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kyjoAts8fDoAWYwT61hdxsjpH0acRQQIMjbZu5LkNVA=; b=LIh
	4uGIGM9k8CWywA6GYjxOmh416+tlarz8ttJ+ALhdJG97LJ4N6gSgd4BOqiW/F6OP2xnsP2pivTo6p
	79g/4VNjzk1YquRw7JIE37ic7DHNxSEBmBLnkcvY+4Ew+Bm+9cnbuujUdhh2StbWdIR4kNrzlRVSp
	Wd7W+8YIZa3Bm+Hl5FOM100jJl7LNGU62Pdp4fKq3yydq5SFtRcThK6AjmBbyb3s+PUYQHQi91qEE
	yO62icADbLFc092rI77r1n54y8tRIoQesIqzBT2kK/7N3xxIvAu1GE39NtxP4MrC3l4LSJciFLBXb
	Ex1Y4BELnRzWDkIq9fQ8jfO/AAUu9Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdRCz-0002KW-Sc; Tue, 26 May 2020 04:28:57 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdRCs-0002K3-Qj
 for linux-nvme@lists.infradead.org; Tue, 26 May 2020 04:28:55 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04Q4STAA134806;
 Tue, 26 May 2020 04:28:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id; s=corp-2020-01-29;
 bh=LEC5BMJyMpqnL+4zEPOD2chl5tT/X4c/Dejm+NTrDL8=;
 b=GMeZ+WNp82wO+CvShHc2K3V1Shdhsy/qipiI+rqTixdRx76kP4ptR2IH/fvfLZLG/kgG
 GJRQ4uRiw8Hxr5moU0mXC0D5TqsFty5HuvVyKN87UjA8bdlBmQMaBNBbQRDWMurpvX8V
 7kK0xJAlW7b1oW/jnp4lHwa7VhRWqWU6oS6ZZOGsKcURhYxjII64QeUh2LzeHDYs9ikn
 ToQdZt2kNOElJg8wkKd1JnhjaEuLJwoInAFEtPT0n+WYrS4jrnqWdRSrIiSYoTt1uQ3/
 /EmPpVOtPPuCMCMouDBJsjMcb4YoYEgY7NO6ixMSM4g4m7i8zvz/SdCBRBvx0ZSPxlz5 OA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 316uskqe7r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 26 May 2020 04:28:29 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04Q4IvpM145515;
 Tue, 26 May 2020 04:28:28 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 317ddn7g5m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 26 May 2020 04:28:28 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04Q4SOrw008176;
 Tue, 26 May 2020 04:28:26 GMT
Received: from localhost.localdomain (/10.211.9.80)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 25 May 2020 21:28:24 -0700
From: Dongli Zhang <dongli.zhang@oracle.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/1] nvme-fcloop: verify wwnn and wwpn format
Date: Mon, 25 May 2020 21:21:18 -0700
Message-Id: <20200526042118.17836-1-dongli.zhang@oracle.com>
X-Mailer: git-send-email 2.17.1
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9632
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 bulkscore=0 mlxscore=0
 phishscore=0 adultscore=0 suspectscore=3 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005260031
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9632
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 lowpriorityscore=0
 suspectscore=3 spamscore=0 priorityscore=1501 clxscore=1011
 impostorscore=0 bulkscore=0 mlxlogscore=999 phishscore=0
 cotscore=-2147483648 adultscore=0 mlxscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005260032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_212850_959512_C362A6EA 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sagi@grimberg.me, linux-kernel@vger.kernel.org, james.smart@broadcom.com,
 chaitanya.kulkarni@wdc.com, hch@lst.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The nvme host and target verify the wwnn and wwpn format via
nvme_fc_parse_traddr(). For instance, it is required that the length of
wwnn to be either 21 ("nn-0x") or 19 (nn-).

Add this verification to nvme-fcloop so that the input should always be in
hex and the length of input should always be 18.

Otherwise, the user may use e.g. 0x2 to create fcloop local port, while
0x0000000000000002 is required for nvme host and target. This makes the
requirement of format confusing.

Signed-off-by: Dongli Zhang <dongli.zhang@oracle.com>
---
 drivers/nvme/target/fcloop.c | 29 +++++++++++++++++++++++------
 1 file changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/target/fcloop.c b/drivers/nvme/target/fcloop.c
index f69ce66e2d44..14124e6d4bf2 100644
--- a/drivers/nvme/target/fcloop.c
+++ b/drivers/nvme/target/fcloop.c
@@ -43,6 +43,17 @@ static const match_table_t opt_tokens = {
 	{ NVMF_OPT_ERR,		NULL		}
 };
 
+static int fcloop_verify_addr(substring_t *s)
+{
+	size_t blen = s->to - s->from + 1;
+
+	if (strnlen(s->from, blen) != NVME_FC_TRADDR_HEXNAMELEN + 2 ||
+	    strncmp(s->from, "0x", 2))
+		return -EINVAL;
+
+	return 0;
+}
+
 static int
 fcloop_parse_options(struct fcloop_ctrl_options *opts,
 		const char *buf)
@@ -64,14 +75,16 @@ fcloop_parse_options(struct fcloop_ctrl_options *opts,
 		opts->mask |= token;
 		switch (token) {
 		case NVMF_OPT_WWNN:
-			if (match_u64(args, &token64)) {
+			if (fcloop_verify_addr(args) ||
+			    match_u64(args, &token64)) {
 				ret = -EINVAL;
 				goto out_free_options;
 			}
 			opts->wwnn = token64;
 			break;
 		case NVMF_OPT_WWPN:
-			if (match_u64(args, &token64)) {
+			if (fcloop_verify_addr(args) ||
+			    match_u64(args, &token64)) {
 				ret = -EINVAL;
 				goto out_free_options;
 			}
@@ -92,14 +105,16 @@ fcloop_parse_options(struct fcloop_ctrl_options *opts,
 			opts->fcaddr = token;
 			break;
 		case NVMF_OPT_LPWWNN:
-			if (match_u64(args, &token64)) {
+			if (fcloop_verify_addr(args) ||
+			    match_u64(args, &token64)) {
 				ret = -EINVAL;
 				goto out_free_options;
 			}
 			opts->lpwwnn = token64;
 			break;
 		case NVMF_OPT_LPWWPN:
-			if (match_u64(args, &token64)) {
+			if (fcloop_verify_addr(args) ||
+			    match_u64(args, &token64)) {
 				ret = -EINVAL;
 				goto out_free_options;
 			}
@@ -141,14 +156,16 @@ fcloop_parse_nm_options(struct device *dev, u64 *nname, u64 *pname,
 		token = match_token(p, opt_tokens, args);
 		switch (token) {
 		case NVMF_OPT_WWNN:
-			if (match_u64(args, &token64)) {
+			if (fcloop_verify_addr(args) ||
+			    match_u64(args, &token64)) {
 				ret = -EINVAL;
 				goto out_free_options;
 			}
 			*nname = token64;
 			break;
 		case NVMF_OPT_WWPN:
-			if (match_u64(args, &token64)) {
+			if (fcloop_verify_addr(args) ||
+			    match_u64(args, &token64)) {
 				ret = -EINVAL;
 				goto out_free_options;
 			}
-- 
2.17.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
