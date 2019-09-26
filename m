Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C554BEADF
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Sep 2019 05:28:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9Bq11WfWsjoOEwZ+cgieFPdB+FJmbTDUQwtz1URHps=; b=KVAh4zN67RmNiN
	S+6Mf/M5zAVUIl+bL1IHSrJMe5ooSUEitIwSZlJrfB4W+67cSd7CIE3LUibzMDScxauBwr6Y3NzP9
	C2OiTOzVN+T/IWUlxVZcE5wc+RiF6kZgeVdCgBviJigozufCHQyyuGoZ+GB0jY82YwL8Xs4Ge4Bal
	cP+4GKeF9mT/8CFbX9OaW4pEq02Wfgbt4zgKN9I5m9Zbi3MrRfQuq/UdlWJesS/UvFovKCBnrDhLm
	MLBVu6xVwR2TUPnp3Tam2nN0oR4OIMuGGH6TI8cA05xkrMibKOP3sLvXUtKC7eXWgzK8rqtOH3+9H
	LIYQc7ai0g5gS5CxFC5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDKSH-0004pj-AA; Thu, 26 Sep 2019 03:28:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDKS6-0004pG-B2
 for linux-nvme@lists.infradead.org; Thu, 26 Sep 2019 03:28:24 +0000
Received: from C02WT3WMHTD6 (rap-us.hgst.com [199.255.44.250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C20921E6F;
 Thu, 26 Sep 2019 03:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569468501;
 bh=84gq12HknZ7XPseL/r2FquFiLU/nmkUX+yyYPXZ1s10=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ALObapA8a5/CpsZQlbepxZxqAD1+LinCt/PWojmXcdfGsQDzPA1EeSXtzh9BsnZ7z
 fQH0CP4y6SKsWfXy5EygI5C9BXpROlXpXo8s5B/pz+CK0dmagTKIWH0sR8n7CRdyDu
 aTxL75MPCPiJoJVYJ13IkCccf3AkS9EnIMUpe/l0=
Date: Wed, 25 Sep 2019 20:28:19 -0700
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2] nvme: Add ctrl attributes for queue_count and sqsize
Message-ID: <20190926032819.GA13013@C02WT3WMHTD6>
References: <20190926002023.14033-1-jsmart2021@gmail.com>
 <4d1cea96-1352-eaae-6bee-cc179b2a6400@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d1cea96-1352-eaae-6bee-cc179b2a6400@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_202822_404947_BC817EBC 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 05:28:49PM -0700, Sagi Grimberg wrote:
> 
> > v2:
> >    Updated is_visible to not show sqsize attribute on pcie controllers
> 
> Why? isn't sqsize assigned for pci controllers as well?

I only noticed this comment in the 'struct nvme_ctrl' definition:

        /* Fabrics only */
        u16 sqsize;

But since it's been questioned, I see pcie does indeed set this field, and the
code comment was the only source of confusion. So sure, the original patch is
fine in that sense.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
