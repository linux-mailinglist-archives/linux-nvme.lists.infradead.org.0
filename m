Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B530F16E34
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 02:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDBbzBK48+uCO0QYBdL5LZTvTaMrAXXGG8CkekLodhI=; b=pf7Xhhqoz5HMQT
	hpHDP/L352jWXA7QMdbgjSZXp3fwm3gbZfjTIwQLB1VaHrww3jRq+0E5EnFgyzXS6ygDx5Tb6oH43
	jtu5ahxEplrpI81Dj0Wuo8n1xvuTJyXXWTKKXYK8/++o5tNHp40V+HRaCroPp3em64ThOiPda1EBo
	EWvR867kXEQ/MfDLu9LjKtXVpgCHIpNPyqgFnlz7OrSxLU0hvEdnLq1D2qaYVrkTOHNLcUBdyjxbq
	rCg3vMBe97z6JZnY7EC3DMygFhN7wY4DMmMw99LOA8u9U7ssLZHmCsG4gx3vulm0W1XGA8QGRqSC7
	ARXxXazrb45YYObsK99A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOAP9-0005JL-H3; Wed, 08 May 2019 00:25:51 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOAP3-0005Ic-Tj
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 00:25:47 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190508002539epoutp04ed158897f2b50ee3fb146cbf5f779487~cjX0rJaLX0474704747epoutp04L
 for <linux-nvme@lists.infradead.org>; Wed,  8 May 2019 00:25:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190508002539epoutp04ed158897f2b50ee3fb146cbf5f779487~cjX0rJaLX0474704747epoutp04L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1557275139;
 bh=KOFXNp3YdVudGio3ms3L3EHkZOK4kF38DEZPb5dGSho=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=Z6LvqpeJZmgKLQxCECNLAWEaH0OJnQ5MueVJ4pMCPKCKH+Z//9UkYYxJi5QSUcWB0
 FM6kmy6GWviz/6c1wAer/yBzdmVesdFdgntt4M33VCMYXjAvDicMDrRDDT569e8VSv
 gwbIzbWW30GxefxVlsCTAKJGJplqRV1z/2s6GVg0=
Received: from epsmges2p2.samsung.com (unknown [182.195.40.189]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20190508002536epcas2p10feb8a852a695e6c6d95c267c9fc95e3~cjXxF55i61873218732epcas2p1F;
 Wed,  8 May 2019 00:25:36 +0000 (GMT)
X-AuditID: b6c32a46-d63ff7000000106f-c7-5cd221fea1bf
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 5A.D4.04207.EF122DC5; Wed,  8 May 2019 09:25:34 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH v2 6/7] nvme-pci: add device coredump support
From: Minwoo Im <minwoo.im@samsung.com>
To: Keith Busch <kbusch@kernel.org>, Akinobu Mita <akinobu.mita@gmail.com>,
 Minwoo Im <minwoo.im@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20190507170733.GA6783@localhost.localdomain>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190508002534epcms2p3acacda8460fcfb7f2b978411b74bbbd5@epcms2p3>
Date: Wed, 08 May 2019 09:25:34 +0900
X-CMS-MailID: 20190508002534epcms2p3acacda8460fcfb7f2b978411b74bbbd5
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrFJsWRmVeSWpSXmKPExsWy7bCmue4/xUsxBq87TS1eHehgtPi/5xib
 xcrVR5ksPm74xGIx6dA1Rot7R78wWVzeNYfNYv6yp+wWvzq5LZ6dPsBsse71exYHbo+Jze/Y
 PXbOusvucf7eRhaPxXteMnlsWtXJ5rF5Sb3H7psNbB59W1YxevT3bmPx+LxJLoArKscmIzUx
 JbVIITUvOT8lMy/dVsk7ON453tTMwFDX0NLCXEkhLzE31VbJxSdA1y0zB+hiJYWyxJxSoFBA
 YnGxkr6dTVF+aUmqQkZ+cYmtUmpBSk6BoWGBXnFibnFpXrpecn6ulaGBgZEpUGVCTsbzXduY
 C16wVLzf6dHA+I65i5GTQ0LARGLd5W5GEFtIYAejxNY/2l2MHBy8AoISf3cIg4SFBRwlDq45
 zAgSFhKQl/jxygAirCnxbvcZVhCbTUBdomHqKxYQW0QgX6J7yVamLkYuDmaBe0wSzx91M0Gs
 4pWY0f6UBcKWlti+fCvYTE4BK4mF/0IhwqISN1e/ZYex3x+bzwhhi0i03jsLdbGgxIOfu8Fa
 JQQkJO69s4Mw6yW2rLAA2Soh0MIocePNWqhWfYnG5x/BtvIK+EpsXDwNzGYRUJWY8mMOVI2L
 xPkb09hAbGagD7e/ncMMMpMZ6MX1u/QhxitLHLnFAlHBJ9Fx+C87zE875j2B+k9Z4uOhQ1BH
 Skosv/SaDaLVQ2Lbf1+Qy4QEfjJK3Fv5hXECo8IsRCjPQrJ3FsLeBYzMqxjFUguKc9NTi40K
 jJCjdRMjON1que1gXHLO5xCjAAejEg/vhLyLMUKsiWXFlbmHGCU4mJVEeI32AYV4UxIrq1KL
 8uOLSnNSiw8xmgK9P5FZSjQ5H5gL8kriDU2NzMwMLE0tTM2MLJTEeR9Kz40WEkhPLEnNTk0t
 SC2C6WPi4JRqYDxxQa2m3C3pzNmQ+C4jvrbv8U0CKWt3lFyouOc58+XSUrGEf+zF3ydZV2ys
 ETO6evATR4Mih5+OAHOwc/fHNvWQh+XXH+ZbO8csvsl59byuYtYG/ZhkN8Z9S8rMowqmvZzH
 4PnuQ9ic59IBRzoDPCey6fJYr8r+zNBo3Fdwk/dLlXBa8RcFJZbijERDLeai4kQAdmyF8c0D
 AAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190507171318epcas5p129bb73b39447d62a7d266ed461687488
References: <20190507170733.GA6783@localhost.localdomain>
 <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
 <1557248314-4238-7-git-send-email-akinobu.mita@gmail.com>
 <CGME20190507171318epcas5p129bb73b39447d62a7d266ed461687488@epcms2p3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_172546_216581_99996282 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Reply-To: minwoo.im@samsung.com
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> This is a bit of a mine field. The shutdown_lock is held when reclaiming
> requests that didn't see a response. If you're holding it here and your
> telemetry log page times out, we're going to deadlock. And since the
> controller is probably in a buggered state when you try to retrieve one,
> I would guess an unrecoverable timeout is the most likely outcome.

Akinobu,

I actually agree with Keith's one.  In my experience, there was always internal
error inside device when timeout occurs in nvme driver which means the
following command might not be completed due to lack of response from
device.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
