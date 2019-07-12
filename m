Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325F366FA6
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 15:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2oAxWhDR/aumePlThcCjoUAK50InQ661OmNUNuykoA=; b=qRiMf25pgrKwV9
	YxmT+V1I63uIQKhRcG8DlTsYXMcX2ttlZVXLm/8IOJD38+i5qI5ZVzf55uoJJadJk6c6nu2VRxHoL
	kw3Ei89kQDKuXantDiGv7fBp2tQYVlpK0ClXXXPUaDQPwHfTXEpBrr+v64Xe87S/C3l0XmAP52MJw
	c/bW5yZOKS8460J9igtUBuiliijWe1uiP/BaRej2ENRnL7m9MwfwUzx93WOtCD5dUlhGmemrvy421
	grV6xAsJlXCghifWjTgzUMn6wFvALqKduS1i3g8ENaTpzMiMfJ3lBxZowW10BZqRgsJm4Benper3l
	H45gx6wubdU3w4WZ5KGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlvHn-0006bp-CO; Fri, 12 Jul 2019 13:08:27 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlvHh-0006ac-HZ
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 13:08:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 101892960D3C;
 Fri, 12 Jul 2019 15:08:17 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id HTSI3eohb4Bk; Fri, 12 Jul 2019 15:08:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id D54442960D6D;
 Fri, 12 Jul 2019 15:08:15 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu D54442960D6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1562936895;
 bh=yyCslXZGpu39EYnls+rZ8yM854MaPIDJPEXwDlJvY2w=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=AkbziRsr+Z4AWrLAiKk4QzbBivKncLt6+slmERVtKJipGa18QIKSj5JoinD0gC4g6
 Dfl+TNRWxEvNhBcq63HAwAdLToYTMKO47XzzSNhdnPBmyB9qI8kveFyQysMBy6P7Nt
 ZAS+6lT5/8lrcp9QQO2KdPwNqzSUlNlORllunxlQ=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id FhP-mWq7ry6s; Fri, 12 Jul 2019 15:08:15 +0200 (CEST)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [192.168.40.202])
 by zimbra2.kalray.eu (Postfix) with ESMTP id B9E302960D32;
 Fri, 12 Jul 2019 15:08:15 +0200 (CEST)
Date: Fri, 12 Jul 2019 15:08:15 +0200 (CEST)
From: Marta Rybczynska <mrybczyn@kalray.eu>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <1603354553.31165718.1562936895742.JavaMail.zimbra@kalray.eu>
In-Reply-To: <20190710163853.GB25486@lst.de>
References: <1575872828.30576006.1562335512322.JavaMail.zimbra@kalray.eu>
 <989987da-6711-0abc-785c-6574b3bb768c@mellanox.com>
 <20190709212904.GB9636@lst.de>
 <516302383.30860772.1562736406606.JavaMail.zimbra@kalray.eu>
 <20190710163853.GB25486@lst.de>
Subject: Re: [PATCH v2] nvme: fix multipath crash when ANA desactivated
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.12_GA_3794 (ZimbraWebClient - FF57 (Linux)/8.8.12_GA_3794)
Thread-Topic: nvme: fix multipath crash when ANA desactivated
Thread-Index: fwKn1PX6YED9F5qDEy8Az7LxHoTF6w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_060821_798294_28885DA8 
X-CRM114-Status: UNSURE (   3.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Samuel Jones <sjones@kalray.eu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 Jean-Baptiste Riaux <jbriaux@kalray.eu>, kbusch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



----- On 10 Jul, 2019, at 18:38, Christoph Hellwig hch@lst.de wrote:

> On Wed, Jul 10, 2019 at 07:26:46AM +0200, Marta Rybczynska wrote:
>> Christoph, why would you like to put the use_ana function in the header?
>> It isn't used anywhere else outside of that file.
> 
> nvme_ctrl_use_ana has a single caller in core.c as well.

Thanks Christoph, I'm testing a version similar to yours.

Marta

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
