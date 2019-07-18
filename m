Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1126C9BC
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jul 2019 09:07:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/fAGW5Fr9IZt9fxcdzUXnJ5sccSyYf0328VuRpPp1lg=; b=PbhCn5dfgDqcOe
	9Oj1/BjOcwB0dgaHW0fQAB7nlr9BkVZVwdNI0Mv4Uc2Al1CByX94YYiDRdPqYDXxIoOKfEOcybccw
	dqIMB8us2djDgbOXqYO5Nt8CBaoleNNQUxCOHckKLWokywGoVMve/Un2fuH1fERJrx45q6TbWjEBR
	Oe88+tbOXkhzhevFWnoXx6x+Q9/wKNx25G6RabI8z3Pme9VsOfhdreovEcExo3c26A+e2cMIBofH+
	pj7PT3d7HB+0qShdqrYv2yeJsXzmrqOgw9laoR653rTYZccBEkcuBG/OgAMthN5dBt2J/W1nKLIRS
	h019/ALgI/e3KL9aEErA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho0VV-0005nN-GE; Thu, 18 Jul 2019 07:07:13 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho0VM-0005ml-U2
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 07:07:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8A2C3AD93;
 Thu, 18 Jul 2019 07:07:03 +0000 (UTC)
Date: Thu, 18 Jul 2019 09:07:03 +0200
From: Johannes Thumshirn <jthumshirn@suse.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH blktests v2 08/12] check: Add the ability to call a
 cleanup function after a test ends
Message-ID: <20190718070703.GH15760@x250.microfocus.com>
References: <20190717171259.3311-1-logang@deltatee.com>
 <20190717171259.3311-9-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717171259.3311-9-logang@deltatee.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_000705_115236_D5F1CCFE 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Theodore Ts'o <tytso@mit.edu>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Omar Sandoval <osandov@fb.com>,
 Michael Moese <mmoese@suse.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good,
Reviewed-by: Johannes Thumshirn <jthumshirn@suse.de>
-- =

Johannes Thumshirn                            SUSE Labs Filesystems
jthumshirn@suse.de                                +49 911 74053 689
SUSE LINUX GmbH, Maxfeldstr. 5, 90409 N=FCrnberg
GF: Felix Imend=F6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=FCrnberg)
Key fingerprint =3D EC38 9CAB C2C4 F25D 8600 D0D0 0393 969D 2D76 0850

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
