Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAE318D9A2
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Mar 2020 21:42:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MOwDJg65njPKDvkngoUEvLAfAfNIvoQFvhQ/ShcT6QU=; b=Y1gs+6BIIkbI19
	WGz+rp0kWzD7IHPEL7kiuFkKrtLFBm6EkrBJacofI5Gdy3mkCpnLbfnPwQfZJpZT2qpwxBSRw6G7I
	aVJwuEBROjmaZOay+iHrwxDpj4mk4P4rVDqLAxGkr7+RndMBtCdXamgpCxEob/yLzN9+tn9PCS1J2
	dSxMsNS74OgVJPf7shM1tR4MUHkw/i3/9RRIlZxVUYUztqWUeY37sma0T9diTfLE/n89LTtIuUxg6
	cM5K92ekOEoCguc5xrXdQWuqCjbESiM6H/CZTsuP6ESJPwGVFvBZ7B2XWPCwkyKBA8cA/fPFhqwaa
	vTH9+TyqDU0uUvLsL5mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFOT6-0007qz-CV; Fri, 20 Mar 2020 20:42:12 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFOSc-0007QX-Go
 for linux-nvme@lists.infradead.org; Fri, 20 Mar 2020 20:41:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584736900;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=F5o7O3hHLwUkjwFdYrYb+q6Ej+C4pwfFZus5wp+3HUs=;
 b=EMByM1TvGWZfjSeArSmYQFvPIAExV+RmlE/nOO3MwTe7dcDGvydxwxVFxoR2KBwMT64h4A
 1WhZD95j6CglwFUvJAvBM7XGJ4fc9UMexnm8KhQDu4JP2U610PM0+EoGH64TY+/h8FJ5vE
 PYQTkdvfeWOnVE2j0SsWLdkrEdYBpoQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-451-krRRAA4bP2Oiqs9gk2LaPg-1; Fri, 20 Mar 2020 16:39:50 -0400
X-MC-Unique: krRRAA4bP2Oiqs9gk2LaPg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B232800D4E
 for <linux-nvme@lists.infradead.org>; Fri, 20 Mar 2020 20:39:48 +0000 (UTC)
Received: from sulaco.redhat.com (unknown [10.3.128.7])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 088BB90817
 for <linux-nvme@lists.infradead.org>; Fri, 20 Mar 2020 20:39:47 +0000 (UTC)
From: Tony Asleson <tasleson@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/6] nvmetcli: Misc. corrections
Date: Fri, 20 Mar 2020 15:39:40 -0500
Message-Id: <20200320203946.37338-1-tasleson@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_134142_635845_783E5D60 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

While trying to experiment with nvmetcli I've run into
a few issues.  Some changes that I believe are beneficial.

Tony Asleson (6):
  README: Update URL for configshell-fb
  nvmetcli: Improve IOError handling on restore
  nvme.py: Explicit close is redundant
  nvme.py: Sync the containing directory
  nvme.py: Make modprobe work for kmod lib too
  test_nvmet.py: Use string.ascii_lowercase

 README              |  2 +-
 nvmet/nvme.py       | 17 +++++++++++++++--
 nvmet/test_nvmet.py |  2 +-
 nvmetcli            | 24 ++++++++++++++++++------
 4 files changed, 35 insertions(+), 10 deletions(-)

-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
