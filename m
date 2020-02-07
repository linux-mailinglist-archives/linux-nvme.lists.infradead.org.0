Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAE31557ED
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Feb 2020 13:43:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:MIME-Version:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Hm3tSfoM2tevi9QPSCShvJAY87LXtPcuMrZvYjPLnc=; b=ks9cqKKAI9Do0o
	MqU58erO1UHYK3JC7bA7W9dGX+V2QCD/nyhfhyxeKFBFKU9uFMBFZX95AFYPix5+yAJI323ylyoHl
	x9lbqErJruyj3CTUsc+gz/dx9cC002YoeU7cUWpQVoI0xm8YWfoFsQnNTiB99oB0DWt2tnquNbk+X
	hufVNJDa/dqtZ8XGZoaQ8U1+OTnA4haCiolfnZmSaY3/mAlfDq304z2XHChHdR/AXAqjrAxHXOXs4
	E63vjbJYd9Zzfes99kPAOb3rQpj7CAgAotdKlelS26+QfzzrhSYYjXjOBq/WajxGBdc7Ds8KBRejp
	7MdVM2XMGuGeG61F/zIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j02yv-0002zA-2B; Fri, 07 Feb 2020 12:43:37 +0000
Received: from forward104j.mail.yandex.net ([5.45.198.247])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j02yp-0002yd-AY
 for linux-nvme@lists.infradead.org; Fri, 07 Feb 2020 12:43:34 +0000
Received: from forward102q.mail.yandex.net (forward102q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:1ba:0:640:516:4e7d])
 by forward104j.mail.yandex.net (Yandex) with ESMTP id C1BD44A0295
 for <linux-nvme@lists.infradead.org>; Fri,  7 Feb 2020 15:43:22 +0300 (MSK)
Received: from mxback5q.mail.yandex.net (mxback5q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:1ba:0:640:b716:ad89])
 by forward102q.mail.yandex.net (Yandex) with ESMTP id BB32D7F20015
 for <linux-nvme@lists.infradead.org>; Fri,  7 Feb 2020 15:43:22 +0300 (MSK)
Received: from localhost (localhost [::1])
 by mxback5q.mail.yandex.net (mxback/Yandex) with ESMTP id 2W5cjNcdkq-hMtO2EDo; 
 Fri, 07 Feb 2020 15:43:22 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1581079402; bh=Gc0IQXvVVktZ0OANqtpwv+BZpgzp1rGayfa1jGe6u5E=;
 h=Message-Id:Date:Subject:To:From;
 b=Qe1Vi1x+zJ/rxB0hdjQTa6iHBsmlIB19HcORWAk0crSDOtmoxYfTKDdd5bHAwKqUk
 QgPnDz3+31kZwMZCpeWK3W0N9RNpCAMT4yXPiztnjpOj8RWNM9q0teeAl8CSNiNxDt
 8H+dluQLuGyH1MUAJ9Il2zmBeJbZIn2qevlO9zHA=
Authentication-Results: mxback5q.mail.yandex.net; dkim=pass header.i=@yandex.ru
Received: by vla4-9d01d86ae0b7.qloud-c.yandex.net with HTTP;
 Fri, 07 Feb 2020 15:43:22 +0300
From: Talker Alex <alextalker@yandex.ru>
Envelope-From: alextalker@yandex.ru
To: linux-nvme@lists.infradead.org
Subject: NVMe/IB support
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Fri, 07 Feb 2020 15:43:22 +0300
Message-Id: <12132471581079402@vla4-9d01d86ae0b7.qloud-c.yandex.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_044331_725362_9218B100 
X-CRM114-Status: UNSURE (   3.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [5.45.198.247 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [alextalker[at]yandex.ru]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

is there really exist NVMe/IB solutions?
I noticed that ConfigFS in target driver permit InfiniBand address type
but it's no use for any driver, except maybe as a referral.

Does anyone has an use-case for it or this one can be safely ignored for now?
And if you have a production referral example, please be so kind as to share it(the ConfigFS values).

------------------
Best regards,
Alex

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
