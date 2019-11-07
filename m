Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE19F257C
	for <lists+linux-nvme@lfdr.de>; Thu,  7 Nov 2019 03:37:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:From:Subject:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCmrzlxzJ+dmijyBccAGfB2CinJiZhxIZ27uP9tCLDE=; b=nVnvPTMLK5QTGJ
	jHtShfVu8MgsPOA0rwxsdm1gpjX4vXi/oVK//JYxVXOCD7GhBgRqoNt0T2hIA2VWo8QeRN7AbbEQ/
	kJ+wZvzF8GhTNQNxkFxSsnsdregegNLpFt51Yfb/jCdeAL5Yx9+bYaoTypjdo3rz4nJ2dBxX21tcE
	alhPCnI+MVtwSW9okIpDiX25lntJaxrnx16EkRluCIXMeMrlMl3dD4U7HtevXLblrhKrn1VkpUrq7
	Cov6bu4C259ZxRCvkzdOwDf8T1JGev9P1npShKAswEqz6ZghXV+e85q7MYKs39IKCWvM44QFtq0/v
	KwurA3soMpZL5VU+KrTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSXfT-0007XH-5Y; Thu, 07 Nov 2019 02:37:03 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSXfO-0007Wf-4d
 for linux-nvme@lists.infradead.org; Thu, 07 Nov 2019 02:36:59 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA72YIqx006554;
 Thu, 7 Nov 2019 02:36:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2019-08-05;
 bh=0uotxuHW25CUK0DzaYd2r2klUGBmzn4YKI41lli6p/o=;
 b=SQkpWhlJTkXo7hm2AU6Ngk5CYYA+X+fqMw6nXknOb/DsyDPCUPysymE7BWAH8OykPKuw
 Ar3aSniAYWtY9VBftRuEdJWOvDHLO4mSGA6KEQpPl8GxkyUF0e9VVfdrHFNlQd9KpoA2
 VcmmkJnYjTwRFPrx24ZbME80ODsmAiXQR7fBTfcVi2vo5UBXBvatBhtOQDXDebNs/LGI
 PL59HKVqqfq8iayaSOOypMNgH7jONovYPbrgQ0uNY8ghwUt6hiBvGd6eanFhCfyM6wEr
 wTtjjL0dY3m6MQjCxZ1pKZBvlGioUT1ViKYXNCwmFbjvrEpkhZinDDLb9gIsVc7bBFP/ Og== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2w41w0twt1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 Nov 2019 02:36:42 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA72Xffb014176;
 Thu, 7 Nov 2019 02:36:41 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2w41wfpq84-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 Nov 2019 02:36:41 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xA72aeJh014274;
 Thu, 7 Nov 2019 02:36:40 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 Nov 2019 18:36:40 -0800
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH] nvme-cli/fabrics: Add pi_enable param to connect cmd
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20191105162026.183901-1-maxg@mellanox.com>
 <20191105162026.183901-2-maxg@mellanox.com>
Date: Wed, 06 Nov 2019 21:36:37 -0500
In-Reply-To: <20191105162026.183901-2-maxg@mellanox.com> (Max Gurtovoy's
 message of "Tue, 5 Nov 2019 18:20:11 +0200")
Message-ID: <yq15zjwza2y.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9433
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=767
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911070025
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9433
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=849 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911070026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_183658_315773_B6C1D095 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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
Cc: sagi@grimberg.me, vladimirk@mellanox.com, shlomin@mellanox.com,
 israelr@mellanox.com, linux-nvme@lists.infradead.org, idanb@mellanox.com,
 oren@mellanox.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Hi Max,

> Added 'pi_enable' to 'connect' command so users can enable metadata
> support.
>
> usage examples:
> nvme connect --pi_enable --transport=rdma --traddr=10.0.1.1 --nqn=test-nvme
> nvme connect -p -t rdma -a 10.0.1.1 -n test_nvme

Why does it have to be explicitly enabled? I can understand why you'd
want the capability to disable PI in case you encounter a bad target.
But having to opt-in is different from how the rest of the block
integrity code works. In SCSI, if HBA and target are capable, both DIX
and PI enabled unless you explicitly disable them.

-- 
Martin K. Petersen	Oracle Linux Engineering

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
