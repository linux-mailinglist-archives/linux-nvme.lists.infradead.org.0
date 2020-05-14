Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E031D2556
	for <lists+linux-nvme@lfdr.de>; Thu, 14 May 2020 05:10:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8toXx44CM1LumWmnOff311FLvSD8dGHbaUemFxd6zuE=; b=GoWbSO4rnLSik0
	ZUOFcYkyEVpo7rNHdgXDsoYiePIjGpQJcB1jXO9Xse8rqhwKmFLyx4K/VhcrcCmuesCYuMJvuwB5D
	40vSN5cALx0oTi1jKxtoqrnmWJQOYQKoM/THGfsyCB/H2LAhU5AOCeBMTGnSQPGOFxU6/befX7UVQ
	R8tF2RrN701sdE3s/qHIyA+ERv+1XTaf4JCsUx+3S0gnWJWznwf9GTSPYmUFlZfzq/oU2zpykp4lx
	a83tGQe9GPdn4uKjMaSJTgh4xWVEdJRHESYfOe4izpiZdM5uoAFSHcyqvo0/OKyecCaH1Gz6VwHAT
	u3Zf5PWHbzxvLJqn6l0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ4GJ-0000P1-OM; Thu, 14 May 2020 03:10:19 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ4GE-0000OJ-0P
 for linux-nvme@lists.infradead.org; Thu, 14 May 2020 03:10:15 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04E378Wr095075;
 Thu, 14 May 2020 03:10:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2020-01-29;
 bh=m7bAn+WWQ+bfgCTZNnZygf/ignRIIfrsWIiTOlGv4tQ=;
 b=YUU7MhGUQ7isjSm15xGMZVS8wXd2zsOh8Do1F1gQgWM8m7QRDz+lzaetssQwyoFnQ+VE
 746GhFy+I4nqe6++b+j8Uly/WPJ85GO9eRfLSCDeRn/Klv8KEtZ87vcKVBqb3H9zfCHR
 9mNXII5wqv4SFf0rOcGSVlNL/cjNQuA6Rb4jEZ7rqy/8YfuufERghNBtXmJYO6vol4gi
 OT2M0flnjuxVXRZefcBgnLhI459Vaxigop2ZO7OSgTyCoh1x8wkphGbXQyrTGQswr6ua
 Xm7VpJealZ1OWqI8UV/jx6ftKjwzqv6L5j8IVLO3Homm9TdDmTQquOfKQ4WxY2XEBwSb 7g== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 3100xwqys8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 14 May 2020 03:10:09 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04E383iF071981;
 Thu, 14 May 2020 03:10:09 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 3100yfugx9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 14 May 2020 03:10:09 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04E3A8g9017656;
 Thu, 14 May 2020 03:10:08 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 13 May 2020 20:10:07 -0700
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 16/16] nvmet-rdma: add metadata/T10-PI support
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200504155755.221125-1-maxg@mellanox.com>
 <20200504155755.221125-17-maxg@mellanox.com>
Date: Wed, 13 May 2020 23:10:04 -0400
In-Reply-To: <20200504155755.221125-17-maxg@mellanox.com> (Max Gurtovoy's
 message of "Mon, 4 May 2020 18:57:55 +0300")
Message-ID: <yq1eernw6sz.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.91 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9620
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 bulkscore=0
 phishscore=0 suspectscore=0 adultscore=0 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005140026
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9620
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 cotscore=-2147483648 bulkscore=0
 phishscore=0 adultscore=0 mlxlogscore=999 lowpriorityscore=0
 impostorscore=0 spamscore=0 malwarescore=0 priorityscore=1501 mlxscore=0
 suspectscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005140026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_201014_133848_08B0FC85 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, shlomin@mellanox.com, israelr@mellanox.com,
 vladimirk@mellanox.com, linux-nvme@lists.infradead.org, idanb@mellanox.com,
 oren@mellanox.com, kbusch@kernel.org, nitzanc@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Max,

> +static void nvmet_rdma_set_sig_domain(struct blk_integrity *bi,
> +		struct nvme_command *cmd, struct ib_sig_domain *domain,
> +		u16 control)
> +{
> +	domain->sig_type = IB_SIG_TYPE_T10_DIF;
> +	domain->sig.dif.bg_type = IB_T10DIF_CRC;
> +	domain->sig.dif.pi_interval = 1 << bi->interval_exp;
> +	domain->sig.dif.ref_tag = le32_to_cpu(cmd->rw.reftag);
> +	domain->sig.dif.apptag_check_mask = 0xffff;
> +	domain->sig.dif.app_escape = true;
> +	domain->sig.dif.ref_escape = true;
> +	if (control & NVME_RW_PRINFO_PRCHK_REF)
> +		domain->sig.dif.ref_remap = true;
> +}

Same comment as the initiator side wrt. the ref tag escape.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
