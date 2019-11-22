Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9833106731
	for <lists+linux-nvme@lfdr.de>; Fri, 22 Nov 2019 08:43:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spSG0nGCb5i79JJSI5BIU8keQlLVDoRa8pmfudT/Zu8=; b=T9sPfL0p0O2Fzj
	lxqv/pX1TWlTyy98qzIMjNyzLvvNFb1LG6cXqoCl99X0PTchwrIDBUpIAxsALlmmCYgpd2Hh6BDAp
	fJwicTekuSoS8b0qyAJL+A1zPzq7bReZ8X1gybu2gCdGBWMwY0cbpGMopfAHyrHd+Kt4JkxykQGzJ
	e0Y647xpGc8/59CdY3Ayi3w4aJzUi6pYVSYh49ABUdarTV1CsDuKCxJIGA4nDv53QmY91Hsbp0mvO
	Cxizybt8uZvqRGfTvUxGHH9i80+SC5Cak4fSDfaNP5Q2uAXKRh1w/SimGn1+eu7M8IGZt+0MFGaKt
	mvq+Cih/j1+kvl8d+uDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY3b9-0004Kn-Os; Fri, 22 Nov 2019 07:43:23 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY3a7-0003bH-8L
 for linux-nvme@lists.infradead.org; Fri, 22 Nov 2019 07:42:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574408539; x=1605944539;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HTSLqX0/CNO70621Moysch9qPo8EcbPQUmEUYWI4yJ0=;
 b=lpkzrccAyL71nX1MCr567uqc84vO6YpVEZKhiiM3XXgYcqdFB95ibkhI
 rM5HdglSU/GCmiHYWoBzmVfILsSwWi9gEvTQFTZKZbgztg178anf727k0
 OWNvJ9KVEo91pA5OjCho9dSvzBE0ZbjfGQ1OMe9EXDWBLtvCW9a5lLPHb
 vsAw+3xbXBdJZXC+jQnImsPlkQ9Ga+uy+IMRg+tppfzEv5Br8+JlOQE0t
 kcF1j7gF2WUd/vrJ37qm2vDEwCvWvUBrHtd9rvPjDZa9VMwdH0/nNzICK
 asu+uVu2oD7lsEDOl0RcNbDJMKoQ+pJjdTpgFGczC2GDYQKFfS1SE9gfo A==;
IronPort-SDR: SyfJjs2Go7X4bB5axXYP9RvVmeBdUp5JvgFJhpOxHOHxWyxFUCxAJatO/xjFko1/Q7lAQ9Ra/3
 wpwBE6ZXRVG7FkAahx7RaYEeIPjWRZZ/HVll+RjIPWBn8ba7WljaCb2Zq/z3i2bDnBVzXFUvNw
 a+T3OHx20UieQO2h5QvPEDFsCDaHLn5o+gZHAgAcxkBwJebD5QMlvPLCVqokVBjA2Q21Ad0Gbo
 9nxIWMkAOZqJohlgivWvLQPljEolBLEu3DGpYffS00k9KhY3pscS0OfMLU7hO6fuk7fTO4NoQ9
 QMY=
X-IronPort-AV: E=Sophos;i="5.69,229,1571673600"; d="scan'208";a="128163470"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 22 Nov 2019 15:42:17 +0800
IronPort-SDR: rPeYoEe6g8TNbkAbGeeeO6Vmyr2rIqNKiY9dUknG7YyDaUiRk4nMroZoSb3PLa0EIL3MVGK62D
 5qdTK5ipHah0HV5KsoICrMMaU/dHOYznXbKPQNiYOUv9X9bw0cIbevfTe5bjmnD1P5n5/tZM/k
 1RG5K2qQL2ttG51tZEMXUylH0jaJcc/qmUDCIviAwiBdEgTS7D8HUEWT9/5fjvrgWuj6NqVf0m
 MrxcsctXui+bROEkWzhjlj3XKOSMHt2yD7Rr+yiG/yR38DJ5i4tAfqPAGnEH33vHomyYxE1832
 OsVqhfAG625pgYRvRIX02Rb/
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 23:37:02 -0800
IronPort-SDR: QH9BN7fVbK9gFF2yZcgniakyL+OPuKsPoMQNETpolp3eKdPbnyUUan2j8yeiYm7xcNfMoUXylv
 yKnCRGIFgSS3n8eDR+nwhAHFHyWqzS4t/4V8paJWpk4wuTclxEEZEQrlwXbroespWZRYkpO7Ss
 gs883qiaSKsvOUxebDFbLbld5o6EiDXzAyRmRFzzKEPX/a2whRif35LdbdZeI0N66T91FgomwS
 NaluBswENaRXFqT7s0QmRLqn/M43K/rEsThh/a3zCmIZ5GQq2lDxV6XAgMKKeWXwGRSaCx1jjK
 BP4=
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip01.wdc.com with ESMTP; 21 Nov 2019 23:42:16 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/2] nvmetcli: allow setting of the subsystem model
Date: Thu, 21 Nov 2019 23:42:13 -0800
Message-Id: <20191122074213.12232-3-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20191122074213.12232-1-chaitanya.kulkarni@wdc.com>
References: <20191122074213.12232-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_234219_332574_59D314E3 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: hch@lst.de, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Mark Ruijter <MRuijter@onestopsystems.com>

This patch allows users to set the subsystem's model.

Signed-off-by: Mark Ruijter <MRuijter@onestopsystems.com>
Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 nvmetcli | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/nvmetcli b/nvmetcli
index 4fdac53..ea17f95 100755
--- a/nvmetcli
+++ b/nvmetcli
@@ -157,6 +157,7 @@ class UISubsystemNode(UINode):
         'serial': ('string', 'Export serial number to hosts'),
         'cntlid_min': ('number', 'Set min ctrl id'),
         'cntlid_max': ('number', 'Set max ctrl id'),
+        'model': ('string', 'Set a model description'),
         'version': ('string', 'Export version number to hosts'),
     }
 
@@ -189,6 +190,13 @@ class UISubsystemNode(UINode):
         if cntlid_max != "n/a":
             info.append("cntlid_max=" + cntlid_max)
 
+        try:
+            model = str(self.cfnode.get_attr("attr", "model"))
+        except Exception as e:
+            model = "n/a"
+        if model != "n/a":
+            info.append("model=" + model)
+
         return (", ".join(info), True)
 
 
-- 
2.22.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
