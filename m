Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 766FF1C2F17
	for <lists+linux-nvme@lfdr.de>; Sun,  3 May 2020 22:16:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:Message-ID:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+4RBRWc1TxNx+S052o+deMCT4hoNUS9kjfADYClk04Q=; b=jkF
	fFsgVRzQG/JLvoGzeeqhC0JmeGZUcRyJJ0iMfrIPRNyATwACapBiMjQtJ4h5L6OrCQjqLtYZKtNlo
	5C1ccN0DQCmOuhy5wzCnHSTFsfTR/dx/gee1mjwoxLcRS794QSZp3HN7TISL9hSuAWnVi3lgdckld
	ia7EYs0x0lOplo71Z4SUQS8PR5kj+HHZRS6pIWNY1BjLeeB8upVd/KDQ9Rr+SXakurl3ohwwkKGm1
	8UE3421zasW2utbve4lPmWu/bbusVsy//lyQSuYPk4m77fvnIvPxH+1W5EQqw4gf921eImLZHSwx7
	g1+lPyGdKMoHDK/ojgSrjkWaMXOl4RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVL2V-0004gh-GS; Sun, 03 May 2020 20:16:39 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVL2S-0004g8-4H
 for linux-nvme@lists.infradead.org; Sun, 03 May 2020 20:16:37 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 043KDjsY162167
 for <linux-nvme@lists.infradead.org>; Sun, 3 May 2020 20:16:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=mime-version :
 message-id : date : from : to : subject : content-type :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=49O9TuUHAZP9YInAaF9AyGYFtxN11tQ9lpqarZoDFec=;
 b=RMbqbNdPA5iMFJ9i8KnKyALU6hSJSLNjXRbxa5cpj3IjR1hMbF1aFuftPlBhwu+Two5c
 cFcEiumXaJfa6XDKt8jI6Q7XaR3Z091zWiBejpV6x1QkO6N1XRYWgQIB9tcel0X5dKMC
 xNC2ERmQG44k/3E8qD3j/44NPz4VUJfws5HXSFRbr0kSuusOoMGrW8iy7Iyrx3Xt87hO
 OyX7hp6r4ApVUuIiKlaYSdrnf8sfZ4b4LMC6QYzPP/ZJVlDb549TtzYl4DxyWTuT9DyE
 3Z7UnHamWGh9EzafUf6+TnHUM3GZe3nJf6T8gR4PhtSp9nN1PocNbFrck0wSn1iitp3A 6A== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 30s1gmuttp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Sun, 03 May 2020 20:16:29 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 043KCRco122884
 for <linux-nvme@lists.infradead.org>; Sun, 3 May 2020 20:14:28 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 30sjju4pw6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Sun, 03 May 2020 20:14:28 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 043KEQAh030481
 for <linux-nvme@lists.infradead.org>; Sun, 3 May 2020 20:14:28 GMT
MIME-Version: 1.0
Message-ID: <a3692e2f-c3a3-4d2a-8dc7-b49058e01347@default>
Date: Sun, 3 May 2020 13:14:25 -0700 (PDT)
From: Dongli Zhang <dongli.zhang@oracle.com>
To: <linux-nvme@lists.infradead.org>
Subject: How to setup nvme-loop with multipath
X-Mailer: Zimbra on Oracle Beehive
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9610
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 mlxscore=0 phishscore=0
 bulkscore=0 malwarescore=0 spamscore=0 mlxlogscore=624 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005030179
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9610
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=1 mlxscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 mlxlogscore=657
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005030179
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_131636_304797_CC4CCBC0 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
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
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi nvme developers,

Would you please help confirm if it is feasible to support multi-path (indeed
shared namespace as id->cmic is always set for nvme-over-fabric) for nvme-loop
so that we would be able to have much more complex topology configuration for
nvme multi-path.

Below is my sample json file. While both disk1.img and disk2.img are belong to
'testnqn', disk3.img is belong to 'testnqn2'.

Is there any way to have disk2.img as shared namespace used by both 'testnqn'
and 'testnqn2'?

Thank you very much!


{
  "hosts": [
    {
      "nqn": "hostnqn"
    }
  ], 
  "ports": [
    {
      "addr": {
        "adrfam": "", 
        "traddr": "", 
        "treq": "not specified", 
        "trsvcid": "", 
        "trtype": "loop"
      }, 
      "portid": 1, 
      "referrals": [], 
      "subsystems": [
        "testnqn",
        "testnqn2"
      ]
    }
  ], 
  "subsystems": [
    {
      "allowed_hosts": [
        "hostnqn"
      ], 
      "attr": {
        "allow_any_host": "0"
      }, 
      "namespaces": [
        {
          "device": {
            "nguid": "ef90689c-6c46-d44c-89c1-4067801309a8", 
            "path": "/home/test/disk1.img"
          }, 
          "enable": 1, 
          "nsid": 1
        },
	{
          "device": {
            "nguid": "ef90689c-6c46-d44c-89c1-4067801309a2", 
            "path": "/home/test/disk2.img"
          }, 
          "enable": 1, 
          "nsid": 2
        }
      ], 
      "nqn": "testnqn"
    },
    {
      "allowed_hosts": [
        "hostnqn"
      ], 
      "attr": {
        "allow_any_host": "0"
      }, 
      "namespaces": [
	{
          "device": {
            "nguid": "ef90689c-6c46-d44c-89c1-4067801309a3", 
            "path": "/home/test/disk3.img"
          }, 
          "enable": 1, 
          "nsid": 1
        }
      ], 
      "nqn": "testnqn2"
    }
  ]
}

Dongli Zhang

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
