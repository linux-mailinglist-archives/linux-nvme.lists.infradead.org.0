Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8D73B539
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 14:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wL4DFhu5919TkHjX3T3HYn7O3EgEtKUmgbP86kwJkVU=; b=f7u4PpCn1koU/a
	lz5infNfPMvmLT2r4Rp9D4c1/o1l/b+B6tUkLEZxyOvIe3YBkPrIOUSlZrFNOkjie6GGmp/VGXNE2
	hm3j/5B859zXYYZnvt92guUdr9g0btJg3GhCRAhkuAJlhv+SdM2pzgQCctXyIudhnGY1p4BZth+8G
	KX+ndZh3+7QXtNf2SiI90hpl7vaJ0TAgEpclrtS+/DWfQtgsX+IDB+26zy2Sv4DhyNob3UZKrnAhs
	tGijZY6xgAOtcySmRqvQAIS38wX8DA31PZ+2r5WJ9pZMcHciJ8judiawXNKzx9lOuiVpZGXPf2wcb
	Uwjj8jXBZXHWLAbkf7rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJk9-0007EW-UE; Mon, 10 Jun 2019 12:49:46 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJju-0007Dh-FX
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 12:49:31 +0000
Received: by mail-pl1-x630.google.com with SMTP id s24so3618423plr.8
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 05:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=DKX9tMvkjU0157EuO4Q/1Zkbvmv4iMHC94qzKtqYmPQ=;
 b=ZPpS4ouBuKn61+pjdVXiU/FEND/oKWd8cfD0q8g/OvPl3B2rez/VwRCajKfIS76Szh
 HB1TVqrkZtQP91QW1YFngft/tRbeEXMx+8XNYv1CHxeAtBcXeW5zusXiNrWZni9gVRME
 WZEmk8dW4e7vWJhw5GP+bPOi2L2a7Deq1yzmNnhQ/F5Ho8taRltpPl/afZXp0xCxGLk0
 eTvyhWLnimDJjzyKhca3Z0fHysppat6CbJMnQrCBfpRBOT0nKVxwpXmFXp5rYNFI+qdQ
 eJDOk1HAbMzT0PY9z+GK/NWs1OMeqnCvLvKyxJs45BUM5ZURUpjqD2aCsVzOj6RtQV3K
 ykLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=DKX9tMvkjU0157EuO4Q/1Zkbvmv4iMHC94qzKtqYmPQ=;
 b=inwV7C6OPqPOjH62AY1d3r6fpNAi8nqpfhfQtccMxY0tEfU3jSdteXFEHtoNQnztpC
 A9UxG/LL49N+IeVmjHfZ9Z1P2t1ohx4Es9NGf7VoUnKkfxdiScqPtAA8L0hoBnY9hq6F
 r7HMVjCpd8HWSn+Vg5OQvm0vnzeupdZEzwsVOzuq7Mtopm2LZ5g4iEHcMod4g2X621GE
 FhLh4y8pW51G+NcrbbvKu5Rf/k+E12Sas8LYvtGfgr9wouV1Q2AYWvaRhF3n/01dURhb
 dQ3Yc5jS2TxmV7+tzULSm9HC8g2oGVrWz/DF/ev6/ZmUNSmEGu2cg4VsG5IBC2aAwr+t
 fpQw==
X-Gm-Message-State: APjAAAWnZ+dpX4cmm26fgh/A7C5tMbqGNuuzdK1RGQClIc/lSw092vl9
 AnUSas6RTr0dJ9mS7txydOvFMdXgwTw=
X-Google-Smtp-Source: APXvYqyDJqi7RWUKYo2scLk9z9SJrQPhz3dSrH+Xpddrmwqf8vkNepUQ3YAbJTa41y1A5VCEvRi4lQ==
X-Received: by 2002:a17:902:9a84:: with SMTP id
 w4mr71120176plp.241.1560170968822; 
 Mon, 10 Jun 2019 05:49:28 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id a25sm11194905pfn.1.2019.06.10.05.49.26
 for <linux-nvme@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 05:49:27 -0700 (PDT)
Date: Mon, 10 Jun 2019 21:49:25 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC] mismatch between chardev and blkdev node names
Message-ID: <20190610124925.GA20319@minwooim-desktop>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_054930_542935_5B752542 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:630 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi, NVMe people.

I'd like to get some advices for the reported issue from nvme-cli:
  https://github.com/linux-nvme/nvme-cli/issues/510

As all you guys know, the controller chardev is created with controller
instance id which is from ctrl->instance.  (e.g. /dev/nvme0)
For the namespace blkdev node is set to either instance id or
subsystem id when ns->head->disk is not there.

This policy can make the blkdev and chardev are pretty different view to
the users like who faced this issue.

For the following case, the controller and the namespaces are completly
looking different:

root@target:~# nvme list-subsys                                       
nvme-subsys0 - NQN=nqn.2014.08.org.nvmexpress:80861af4bar                 QEMU NVMe Ctrl
\                                                                                       
 +- nvme1 pcie 0000:00:05.0 live                                                        
nvme-subsys1 - NQN=nqn.2014.08.org.nvmexpress:80861af4foo                 QEMU NVMe Ctrl
\                                                                                       
 +- nvme0 pcie 0000:00:04.0 live                                                        
nvme-subsys2 - NQN=nqn.2014.08.org.nvmexpress:80861af4zoo                 QEMU NVMe Ctrl
\                                                                                       
 +- nvme2 pcie 0000:00:06.0 live                                                        

root@target:~# nvme list                                                                                                   
Node             SN                   Model                                    Namespace Usage                      Format           FW Rev  
---------------- -------------------- ---------------------------------------- --------- -------------------------- ---------------- --------
/dev/nvme0n1     bar                  QEMU NVMe Ctrl                           1         536.87  MB / 536.87  MB    512   B +  0 B   1.0     
/dev/nvme1n1     foo                  QEMU NVMe Ctrl                           1         536.87  MB / 536.87  MB    512   B +  0 B   1.0     
/dev/nvme2n1     zoo                  QEMU NVMe Ctrl                           1         536.87  MB / 536.87  MB    512   B +  0 B   1.0     

This example shows that if we want to get the same result for the id-ctrl,
then we should:
  # nvme id-ctrl /dev/nvme1
  # nvme id-ctrl /dev/nvme0n1

Should users with multipath enabled know this situation well and do
something with perfect understanding this policy because they might be
administrator for the system?  or should the driver provide the same
index at least right next to "nvme" for the controller and namespaces?

I hope you guys can give some advices here :)

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
