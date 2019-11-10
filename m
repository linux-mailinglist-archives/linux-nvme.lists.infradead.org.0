Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 546ACF69A2
	for <lists+linux-nvme@lfdr.de>; Sun, 10 Nov 2019 16:19:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bDGggcZtZufWFWztpS98ACYPt3B34UjvEe0QXTp5VuA=; b=AG1IeHd115stA1
	qHn4p9n3zx4uF2bRiXBwCPcNM7WkHEwYDJcfSJQyBpXPzD162OYLQ/uJDLq3loqJy+HAkE49YwWPG
	9ZZIZxJyglDhaacD5Onxy20qBYQHcK6fv5MSBq7oawkRZ+puYm5gtFeiGPtm5hGJXEnG5P/clYj40
	AT67kEpwWsPdtKaGb8hVtCTKA+WfC8yVAixAMbbtJsP1UoF7Fl9XdK4hhqbeVNECAVd9yeAx26Ial
	rN6J2eZYrYiZBTbP1x05dlet5gu72iDuTnR4fPOmXuEtqlEzn6WG+O7Fl6WOEr3JvPLf5bI4pwjPm
	1PktzbGJ7aVlR/XWqy4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTp0F-0000Nq-Mr; Sun, 10 Nov 2019 15:19:47 +0000
Received: from mail.overt.org ([157.230.92.47])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTp0A-0000NM-LT
 for linux-nvme@lists.infradead.org; Sun, 10 Nov 2019 15:19:44 +0000
Received: from authenticated-user (mail.overt.org [157.230.92.47])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.overt.org (Postfix) with ESMTPSA id 0BA523F20A
 for <linux-nvme@lists.infradead.org>; Sun, 10 Nov 2019 09:11:04 -0600 (CST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=overt.org; s=mail;
 t=1573398665; bh=hGD9VwzwJXWjFfrXt7n1JnGsY3YrZFLAFC/ynypd7xU=;
 h=Date:From:To:Subject:From;
 b=eYOM8wFBF15Cb5vAZYzlYMwgMc3yhY5Fvcl5zJeoPWO5Dk11AG7/ZpJbutHME87hs
 YnQVnV/4dugdAWds7cede8HHVQIwAo40/ODIVNx4d7tOO+a6VkilpE3DIWu6k1g/pL
 UK7Nlub+2TcLIkD35UKpxZlkz5ZbKzJOcq43y/fleW8AHQvZKmviRpnATI0dYoAjY/
 ox6CY4vafa43E1wCY0wGSeF/fwm9feiJdMFuJTj9HAVZaHbuCQjHZ14lycYqdfTfld
 i/ok36n0qwDW41oivgFF92gklmwjTip9yHpx0nj0JGjnJM41hHlahrsMpezX8Z9Apv
 IZgK39v9nBLzg==
Date: Sun, 10 Nov 2019 07:11:02 -0800
From: Philip Langdale <philipl@overt.org>
To: linux-nvme@lists.infradead.org
Subject: IOMMU incompatibility with discard on certain devices
Message-ID: <20191110071102.2b94fca7@fido6>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_071942_796932_C8C0A5CC 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi all,

I'm writing to highlight a problem that is affecting users of certain
nvme ssds as discussed here:

https://bugzilla.kernel.org/show_bug.cgi?id=202665

The problem has been narrowed down to some devices always doing page
aligned reads when reading the list of segments to discard, rather than
reading the exact size passed. When an enforcing IOMMU is used (both
Intel and AMD systems exhibit the same behaviour in the reports), these
page-aligned reads are rejected because they are larger than the actual
allocations.

In the bugzilla bug, a patch was proposed to add a device quirk that
ensures the segment list allocation is page-aligned, and this solved
the problem for everyone who tried it. Another patch was offered that
simply always page-aligns the allocations and perhaps that's
actually better?

If I was the patch author, I would have sent the quirk patch to the
list, but as I am not, I can't sign-off on it. It would be great if
someone could look at this, and we can get a fix committed.

Thanks,

--phil

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
