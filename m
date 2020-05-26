Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2FB1D87C3
	for <lists+linux-nvme@lfdr.de>; Mon, 18 May 2020 21:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=W8HAwyIu1fapeWs/2OZUofqVY+2m0hnj1zlSzG8bhJ4=; b=uyq
	Q09/cQ3yeRWRO5el/tQOClO8/Bp8npTayoMIC/olMWQ1/z2DorPR4Oon1Lqlu+aNnZO+gg7aaGdHG
	Tkvcj4fcG2Kq/d2WZ0/QuuTX/xfx2xxntr6Rw+axZadh4xVSCJitigMdtVikYfPc5iY1Aw7oj0Wr5
	sc4HkvoUej4YOY/UC3MY1qeokdXRvHVCa3NF/awlqg5WeBulmkIo+6js33bJ28KXy06SkwLkuQiDw
	TdyL7mki/Wry2sMQAKDZFxM/vogssB7KVeH/yf9wZOYSJSjCLC4VKkN2H2/EpwP5QUWSOKwzvtjb3
	hSY8li73ZOUkm0rKqYHkAUcsWeUrHhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jal0a-0000Ij-5J; Mon, 18 May 2020 19:01:04 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jakzh-0005nd-Vs
 for linux-nvme@lists.infradead.org; Mon, 18 May 2020 19:00:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589828407;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type;
 bh=Wo4R+GRIhkTeX5wy8mJnTzZO2bgmBYCvu61UZYhZMT0=;
 b=BwEwTEmErTzWAPC5dCyV2/susXUMV/82bmCjgNpG7WByh48Q3lQJGXE/WkJ2VeXKH/DL31
 Eu5uXwBI5mknFq76N1yC0SwBbBlinPz4KovRMpzS1B7Fzh+QXOQz0K1onvubpvG4iTVEUY
 E8VtAtEnL9ExhNHSu/+WItRo++rAzTg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-35-eZPDYSgtNqyqS60xnQ6RZA-1; Mon, 18 May 2020 14:59:58 -0400
X-MC-Unique: eZPDYSgtNqyqS60xnQ6RZA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3D7308014C0;
 Mon, 18 May 2020 18:59:57 +0000 (UTC)
Received: from hpz440.redhat.com (ovpn-112-213.phx2.redhat.com [10.3.112.213])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B2F342B7BB;
 Mon, 18 May 2020 18:59:56 +0000 (UTC)
From: David Milburn <dmilburn@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 0/2] nvmet: fixup processing async events
Date: Mon, 18 May 2020 13:59:54 -0500
Message-Id: <1589828396-144513-1-git-send-email-dmilburn@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_120010_122574_C5DA7670 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: hch@infradead.org, chaitanya.kulkarni@wdc.com, dwagner@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch series changes how async events are processed
and freed based upon review from Christoph Hellwig and
Daniel Wagner, this was discovered while debugging a memory 
leak after clearing connection on the target.

Changes from v1:
 - free aens separate from completing requests in nvmet_async_events_free().
 - declare struct nvmet_async_event in second patch.


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
